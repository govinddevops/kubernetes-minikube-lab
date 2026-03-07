# Kubernetes Troubleshooting Guide (Minikube Lab)

This document tracks common issues encountered during the local Kubernetes cluster setup and their resolutions.

---

## 1. Resource Constraints (Memory Warning)
**Issue:** \`The requested memory allocation of 3072MiB does not leave room for system overhead.\`

**Reason:** Minikube defaults to 2GB-3GB RAM, which might be high for systems with 4GB total RAM.

**Resolution:** Start Minikube with optimized memory limits:
\`\`\`bash
minikube start --driver=docker --memory=2048mb
\`\`\`

---

## 2. DNS Resolution (Internet Connectivity)
**Issue:** \`Could not resolve host: storage.googleapis.com\`

**Reason:** WSL/Ubuntu DNS configuration issues preventing \`curl\` or \`apt\` from reaching external repositories.

**Resolution:** Force Google DNS in the resolver configuration:
\`\`\`bash
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
\`\`\`

---

## 3. Driver Permission Denied
**Issue:** \`Exiting due to DRV_AS_ROOT: The "docker" driver should not be used with root privileges.\`

**Reason:** Running minikube with \`sudo\`.

**Resolution:** Add the current user to the docker group and run without \`sudo\`:
\`\`\`bash
sudo usermod -aG docker \$USER && newgrp docker
minikube start --driver=docker
\`\`\`

---

## 4. Image Pulling Latency
**Issue:** Slow progress during \`Downloading Kubernetes v1.35.1 preload\`.

**Reason:** First-time setup requires downloading ~600MB of base images and binaries.

**Resolution:** Ensure stable internet or use a pre-downloaded \`kicbase\` image.

---
✔ Troubleshooting documentation updated for Lab stability.

