#!/bin/bash
#eksctl utils associate-iam-oidc-provider --cluster production-eks --approve --region us-east-1
#curl -o iam_policy.json   https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/main/docs/install/iam_policy.json
#aws iam create-policy --policy-name AWSLoadBalancerControllerIAMPolicy --policy-document file://iam_policy.json
#eksctl create iamserviceaccount --cluster production-eks --namespace kube-system --name aws-load-balancer-controller --attach-policy-arn arn:aws:iam::631844602603:policy/AWSLoadBalancerControllerIAMPolicy --override-existing-serviceaccounts --region us-east-1 --approve
#sudo curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
#sudo chmod 777 get_helm.sh
#bash get_helm.sh
helm version
