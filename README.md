# Multicast on kubernetes

Borrow code from [go-multicast](https://github.com/dmichael/go-multicast)

Whether multicast works or not depends on the underneath network implementation

##

```
kubectl apply -f pinger.yml
```
```
kubectl apply -f listener.yml
```
```
Shaozhen-Ding-MacBook-Pro:go-multicast sding$ kubectl logs pinger-5d6549d887-7jphj -n multicast
Broadcasting to 239.0.0.0:9999
```
```
Shaozhen-Ding-MacBook-Pro:go-multicast sding$ kubectl logs listener-7c66789c8-vsh74 -n multicast
Listening on 239.0.0.0:9999
2018/06/01 16:52:20 13 bytes read from 192.168.7.2:46571
2018/06/01 16:52:20 00000000  68 65 6c 6c 6f 2c 20 77  6f 72 6c 64 0a           |hello, world.|
2018/06/01 16:52:21 13 bytes read from 192.168.7.2:46571
2018/06/01 16:52:21 00000000  68 65 6c 6c 6f 2c 20 77  6f 72 6c 64 0a           |hello, world.|
```
