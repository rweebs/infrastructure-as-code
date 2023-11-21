resource "kubernetes_namespace" "crossplane" {
  metadata {
    name = "crossplane-system"
  }
}

resource "helm_release" "crossplane" {
  name       = "crossplane"
  repository = "https://charts.crossplane.io/stable"
  chart      = "crossplane"
  namespace  = "crossplane-system"
  depends_on = [kubernetes_namespace.crossplane]
}



resource "null_resource" "secret" {
  depends_on = [helm_release.crossplane]
  provisioner "local-exec" {
    command = "kubectl create secret generic aws-creds -n crossplane-system --from-file=creds=./aws-creds.conf "
  }
}

resource "null_resource" "crossplane" {
  depends_on = [null_resource.secret]
  provisioner "local-exec" {
    command = "kubectl crossplane install provider crossplane/provider-aws:v0.27.0"
  }
}

resource "kubectl_manifest" "aws_provider" {
  yaml_body  = file("./aws-provider-config.yaml")
  depends_on = [null_resource.crossplane]
}
