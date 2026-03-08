# Kubernetes Minikube Lab

This repository contains hands-on Kubernetes experiments performed using a local Minikube cluster.

The goal of this project is to validate container deployment workflows and understand Kubernetes core components such as Pods, Deployments, and Services.

---

## Project Structure
\`\`\`text
kubernetes-minikube-lab
├── app              # Flask sample application
├── manifests        # K8s YAML manifests
├── scripts          # Cluster automation scripts
├── troubleshooting  # Common errors & solutions
└── README.md
\`\`\`

## Features Implemented
* Local Kubernetes cluster setup using Minikube
* Pod deployment using Kubernetes manifests
* Application deployment using Kubernetes Deployment
* Service exposure using NodePort (Port: 30007)
* Configuration management using Kubernetes ConfigMap
* Secure environment variables using Kubernetes Secrets

## Quick Commands
**Start Minikube:**
\`\`\`bash
minikube start --driver=docker
\`\`\`

**Deploy Resources:**
\`\`\`bash
kubectl apply -f manifests/
\`\`\`

**Check Status:**
\`\`\`bash
kubectl get pods
kubectl get services
\`\`\`

## Technologies Used
* **Containerization:** Docker
* **Orchestration:** Kubernetes (Minikube)
* **Web Framework:** Flask (Python)

