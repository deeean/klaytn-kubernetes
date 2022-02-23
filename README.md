# klaytn-kubernetes
Running an Klaytn Endpoint Node on Kubernetes

쿠버네티스환경 위에 클레이튼 엔드포인트 노드를 실행합니다.


## Dependencies

### Custom Resource Definition
```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/master/client/config/crd/snapshot.storage.k8s.io_volumesnapshotclasses.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/master/client/config/crd/snapshot.storage.k8s.io_volumesnapshotcontents.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-csi/external-snapshotter/master/client/config/crd/snapshot.storage.k8s.io_volumesnapshots.yaml
```

아래 의존성을 설치하기전에 위 커스텀 리소스를 추가해주셔야합니다.

- [aws-ebs-csi-driver](https://github.com/kubernetes-sigs/aws-ebs-csi-driver)
- [external-snapshotter (snapshot-controller)](https://github.com/kubernetes-csi/external-snapshotter/)
- [snapscheduler](https://github.com/backube/snapscheduler)

### Services
- [klaytn-reverseproxy](https://github.com/deeean/klaytn-reverseproxy)
- [klaytn-healthchecker](https://github.com/deeean/klaytn-healthchecker)

## System Requirements
- [system requirements](https://docs.klaytn.com/node/endpoint-node/system-requirements)