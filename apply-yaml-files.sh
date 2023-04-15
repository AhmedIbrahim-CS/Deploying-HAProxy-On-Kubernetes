#!/bin/bash


kubectl apply -f haproxy-controller-devops-namespace.yaml


sleep 5


kubectl apply -f haproxy-service-account-devops.yaml
kubectl apply -f haproxy-cluster-role-devops.yaml
kubectl apply -f haproxy-cluster-role-binding-devops.yaml


kubectl apply -f backend-deployment-devops.yaml
kubectl apply -f service-backend-devops.yaml


kubectl apply -f haproxy-ingress-deployment-devops.yaml
kubectl apply -f ingress-service-devops.yaml
