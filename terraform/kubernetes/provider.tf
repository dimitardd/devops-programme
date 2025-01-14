provider "kubernetes" {
  config_path    = "~/.kube/sof-lab03"
  config_context = "sof-lab03"
}

terraform {
  backend "local" {
    path = "~/devops/telerik/terraform-kubernetes.tfstate"
  }
}
