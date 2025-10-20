resource "aws_eks_addon" "pod_identity" {
  cluster_name = aws_eks_cluster.eks.name
  addon_name = "eks-pod-identity-agent"
  addon_version = "v1.3.8-eksbuild.2"
}


# # To know latest addon version, run below command
# aws eks describe-addon-versions --region ap-south-1 --addon-name eks-pod-identity-agent
# kubectl get pod -n kube-system
# kubectl get daemonset eks-pod-identity-agent -n kube-system 
# kubectl get pods -n kube-system -l app.kubernetes.io/name=eks-pod-identity-agent