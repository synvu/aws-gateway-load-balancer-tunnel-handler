#!/bin/bash

echo "==> Setting up enforza AWS GWLB handler"
echo Mode is $1, In Int is $2, Out Int is $3, ENI is $4

ip route add 10.0.0.0/8 dev $3
ip route add 192.168.0.0/16 dev $3
ip route add 172.16.0.0/12 dev $3

echo 0 > /proc/sys/net/ipv4/conf/all/rp_filter
echo 0 > /proc/sys/net/ipv4/conf/$2/rp_filter
