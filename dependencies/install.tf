resource "helm_release" "aws_ebs_csi_driver" {
  name = "aws-ebs-csi-driver"
  namespace = "kube-system"
  repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"

  chart = "aws-ebs-csi-driver"
  version = "2.6.2"
  max_history = 1

  values = [
    file("./values/aws-ebs-csi-driver.yaml")
  ]

  set {
    name = "controller.serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
    # https://github.com/kubernetes-sigs/aws-ebs-csi-driver/blob/master/docs/example-iam-policy.json
    # value = aws_iam_role.aws_ebs_csi_driver
  }
}

resource "helm_release" "snapshot-controller" {
  name = "snapshot-controller"
  namespace = "kube-system"
  repository = "https://piraeus.io/helm-charts/"

  chart = "snapshot-controller"
  version = "1.3.3"
  max_history = 3

  values = [
    file("./values/snapshot-controller.yaml")
  ]
}

resource "helm_release" "snapscheduler" {
  name = "snapscheduler"
  namespace = "backube-snapscheduler"
  repository = "https://backube.github.io/helm-charts/"
  create_namespace = true

  chart = "snapscheduler"
  version = "2.1.0"
  max_history = 3

  values = [
    file("./values/snapscheduler.yaml")
  ]
}