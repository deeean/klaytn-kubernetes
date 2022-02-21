# klaytn-kubernetes
Running an Klaytn Endpoint Node on Kubernetes

쿠버네티스환경 위에 클레이튼 엔드포인트 노드를 돌리기위한 예제입니다.

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

## System Requirements
- [system requirements](https://docs.klaytn.com/node/endpoint-node/system-requirements)

### Disk Performance
| Disk Specification               | Write(MB/s) | Read(MB/s) |
|----------------------------------|-------------|------------|
| io2 3000GB IOPS 3,000 (io2-slow) | 46.5        | 45.3       |
| io2 3000GB IOPS 30,000 (io2)     | 283.0       | 284.0      |

### Live System Specification
| vCPU | Clock (GHz) | Memory (GiB) | Storage (GiB) | IOPS     | Volume Type |
|------|-------------|--------------|---------------|----------|-------------|
| 16   | 2.5         | 64           | 3,000         | 30,000   | io2         |
