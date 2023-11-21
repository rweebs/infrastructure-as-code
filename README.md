# Infrastructure as Code (IaC) Sample Repository

Welcome to the Infrastructure as Code (IaC) Sample Repository! This repository showcases examples of IaC written in four popular platforms: Terraform, Crossplane, Pulumi, and CloudFormation. Additionally, you'll find instructions for installing Crossplane on Kubernetes.

## Table of Contents
1. [Terraform](#terraform)
2. [Crossplane](#crossplane)
3. [Pulumi](#pulumi)
4. [CloudFormation](#cloudformation)
5. [Crossplane Installation on Kubernetes](#crossplane-installation)

## Terraform

[Terraform](https://www.terraform.io/) is an open-source IaC tool created by HashiCorp. It allows you to define and provision infrastructure using a declarative configuration language.

In this repository, you'll find examples of infrastructure defined using Terraform in the `terraform/` directory.

To apply Terraform configurations, navigate to the relevant directory and run:

```bash
terraform init
terraform apply
```

## Crossplane

[Crossplane](https://crossplane.io/) is an open-source multicloud control plane that allows you to define and manage infrastructure resources across different cloud providers.

Explore the `crossplane/` directory for examples of Crossplane configurations. To install Crossplane on Kubernetes, follow the instructions in the [Crossplane Installation](#crossplane-installation) section.

## Pulumi

[Pulumi](https://www.pulumi.com/) is an open-source IaC platform that allows you to define infrastructure using your favorite programming language, such as Python, JavaScript, or Go.

Check out the `pulumi/` directory for examples of infrastructure defined with Pulumi. To apply Pulumi configurations, navigate to the relevant directory and run:

```bash
pulumi up
```

## CloudFormation

[CloudFormation](https://aws.amazon.com/cloudformation/) is an Amazon Web Services (AWS) service that enables you to define and provision AWS infrastructure using a template.

Explore the `cloudformation/` directory for examples of CloudFormation templates. To deploy a CloudFormation stack, use the AWS Management Console or the AWS Command Line Interface (CLI).

## Crossplane Installation on Kubernetes

The `crossplane-installation/` directory provides step-by-step instructions for installing Crossplane on a Kubernetes cluster.

Follow the guide in the [Crossplane Installation](crossplane-installation/) directory to set up Crossplane and start managing your infrastructure resources across various cloud providers.

Feel free to explore, experiment, and contribute to this repository. Happy coding!