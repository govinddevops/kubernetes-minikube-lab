#!/bin/bash
echo "Starting Minikube cluster..."
minikube start --driver=docker

echo "Cluster Information:"
kubectl cluster-info

echo "Node Status:"
kubectl get nodes
