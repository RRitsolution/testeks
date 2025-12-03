#!/bin/bash
##EKS Cluster setup:-
eksctl create cluster --name production-eks --nodegroup-name production-nodes --node-type t2.medium --nodes 3 --nodes-min 2 --nodes-max 10 --region us-east-1 --managed
