#!/bin/bash 

ETCDCTL_API=3 etcdctl snapshot status /tmp/snapshot-pre-boot.db
