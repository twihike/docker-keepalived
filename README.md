# docker-keepalived

[![release](https://github.com/twihike/docker-keepalived/workflows/release/badge.svg)](https://github.com/twihike/docker-keepalived/actions)

## Usage

```shell
# echo 1 > /proc/sys/net/ipv4/ip_nonlocal_bind
docker pull twihike/keepalived
docker run --name keepalived -d --rm --cap-add=NET_ADMIN --net=host \
  -v $(pwd)/keepalived.conf:/etc/keepalived/keepalived.conf \
  twihike/keepalived
```
