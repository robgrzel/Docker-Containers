#!/usr/bin/bash

service openvswitch-switch start
ovs-vsctl set-manager ptcp:6640
