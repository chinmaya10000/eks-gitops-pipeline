resource "helm_release" "argocd" {
  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "9.1.9"

  values = [file("values/argocd.yaml")]

  depends_on = [aws_eks_node_group.general]
}
