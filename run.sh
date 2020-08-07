#!/bin/bash
/bin/ip -4 route add 10.0.0.0/16 via 172.99.0.2 dev eth0
cd /code && python run.py --fbidhttp=False --policy=autoadd --xsrf=False
