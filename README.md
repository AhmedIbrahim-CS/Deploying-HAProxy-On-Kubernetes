# Deploying HAProxy On Kubernetes

This repository includes the necessary YAML files to deploy the HAProxy Ingress Controller on Kubernetes. The HAProxy Ingress Controller is an open-source solution for managing external access to Kubernetes services, providing load balancing, SSL termination, and other essential features for modern web applications.


![Screenshot of the HAProxy dashboard](https://github.com/AhmedIbrahim-CS/Deploying-HAProxy-On-Kubernetes/blob/cd82516564659de1a66e90296ea9d6551f9486f8/The%20proxy%20states.png)


# Getting Started
Before you begin, you will need the following:
- Minikube installed and running on your local machine
- kubectl installed and configured to access your Minikube cluster


# Deployment Steps
To deploy the HAProxy Ingress Controller on your Minikube cluster using the provided YAML files, follow these steps:

- Clone this repository to your local machine:

git clone https://github.com/AhmedIbrahim-CS/Deploying-HAProxy-On-Kubernetes.git


- Change into the cloned directory:

cd Deploying-HAProxy-On-Kubernetes

- Set the script file permission to executable using the following command:

chmod +x apply-yaml-files.sh
This will add executable permission to the apply-yaml-files.sh script file, allowing you to run it using the ./apply-yaml-files.sh command.

- Deploy the YAML files by running the following command:

./apply-yaml-files.sh
This command will deploy all the necessary resources.

- Once the deployment is complete, you can access the proxy states on port "1024" via the nodePort service ingress-service-devops by browsing to the IP address of your Minikube cluster using the nodePort specified in the YAML file. To get the IP address of your Minikube cluster, run the following command:

minikube ip
This will display the IP address of your Minikube cluster. To access the proxy states, open a web browser and navigate to `http://<minikube-ip>:<ingress-service-devops-nodePort>`

- To clean up the deployment when you're finished, run the following command:

kubectl delete -f . --recursive
This command will delete all the resources that were created by the YAML files.
