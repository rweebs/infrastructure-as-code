resource "kubectl_manifest" "provider" {
  yaml_body = file("./provider.yaml")
}

resource "kubectl_manifest" "vpc" {
  yaml_body  = file("./vpc.yaml")
  depends_on = [kubectl_manifest.provider]
}

resource "kubectl_manifest" "subnet" {
  yaml_body  = file("./subnet.yaml")
  depends_on = [kubectl_manifest.vpc]
}

resource "kubectl_manifest" "sg" {
  yaml_body  = file("./sg.yaml")
  depends_on = [kubectl_manifest.subnet]
}

resource "kubectl_manifest" "ec2" {
  yaml_body  = file("./ec2.yaml")
  depends_on = [kubectl_manifest.sg]
}
