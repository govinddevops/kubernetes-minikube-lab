# Kubernetes Minikube Lab

This repository documents the hands-on implementation of Kubernetes resources, starting from cluster setup to advanced workload management.

## Project Scope
- Infrastructure: Minikube (Local Cluster)
- Management Tool: kubectl
- Resource Types: Pods, Deployments, Services, ConfigMaps.

## Lab 01: Cluster Setup & Pod Deployment
- **Automation:** Use \`scripts/cluster-setup.sh\` to bootstrap the cluster.
- **Manifest:** \`manifests/nginx-pod.yaml\` defines a standard Nginx pod.

## Common kubectl Commands Used
\`\`\`bash
kubectl apply -f <file>
kubectl get pods
kubectl describe pod <name>
kubectl logs <name>
\`\`\`

