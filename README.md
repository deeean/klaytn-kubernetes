# k8s-k4n (WIP)
Running an Klaytn Endpoint Node on Kubernetes

## Dependencies

```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/master/client/config/crd/snapshot.storage.k8s.io_volumesnapshotclasses.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/master/client/config/crd/snapshot.storage.k8s.io_volumesnapshotcontents.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/master/client/config/crd/snapshot.storage.k8s.io_volumesnapshots.yaml
```

- [aws-ebs-csi-driver](https://github.com/kubernetes-sigs/aws-ebs-csi-driver)
- [external-snapshotter (snapshot-controller)](https://github.com/kubernetes-csi/external-snapshotter/)
- [snapscheduler](https://github.com/backube/snapscheduler)

## Requirements
- EKS