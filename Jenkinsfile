pipeline {
  agent any 

    stages {

      stage('Checkout the code from Github') {

        steps{


          git branch: 'main', url: https://github.com/RRitsolution/testeks.git

            sh 'echo "Code checkout done"'
        }
      }

      stage('EKS Cluster creation'){

        steps{

          script{

            sh '''
                bash eksclustercreation.sh
                echo "eks cluster created successfully."
            '''

          }

        }

      }


      stage('Install policy for k8s'){

        steps{

          script{

            sh '''

          
                eksctl utils associate-iam-oidc-provider --cluster production-eks --approve --region us-east-1
                sudo curl -o iam_policy.json   https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/main/docs/install/iam_policy.json
                aws iam create-policy --policy-name AWSLoadBalancerControllerIAMPolicy --policy-document file://iam_policy.json
                eksctl create iamserviceaccount --cluster production-eks --namespace kube-system --name aws-load-balancer-controller --attach-policy-arn arn:aws:iam::631844602603:policy/AWSLoadBalancerControllerIAMPolicy --override-existing-serviceaccounts --region us-east-1 --approve
       
       '''

          }
        }

      }


    }

}
      
