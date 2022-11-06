#!/bin/sh
sudo docker exec clab-02_xrv_gnmi-PC1 ip link set eth1 up
sudo docker exec clab-02_xrv_gnmi-PC1 ip addr add 10.0.10.2/24 dev eth1
sudo docker exec clab-02_xrv_gnmi-PC1 ip route add 10.0.20.0/24 via 10.0.10.1 dev eth1

sudo docker exec clab-02_xrv_gnmi-PC2 ip link set eth1 up
sudo docker exec clab-02_xrv_gnmi-PC2 ip addr add 10.0.20.2/24 dev eth1
sudo docker exec clab-02_xrv_gnmi-PC2 ip route add 10.0.10.0/24 via 10.0.20.1 dev eth1
