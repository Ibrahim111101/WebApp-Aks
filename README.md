# NGINX Kubernetes Deployment

This repository showcases a basic NGINX deployment using Kubernetes. The setup consists of a Dockerfile for building a custom NGINX image and Kubernetes manifests for deploying the application.

## Dockerfile

The Dockerfile is based on the official NGINX image, exposing port 80 for HTTP traffic. You can customize NGINX configuration by uncommenting the relevant line and providing your configuration in the `nginx.conf` file.

## Kubernetes Deployment

The `nginx-deployment.yaml` file defines a Kubernetes Deployment with three replicas. It employs the Rolling Update strategy, ensuring a smooth update process. The NGINX container image used is tagged as `ibrahim111101/nginx-app:v1`.

## Kubernetes Service

The `nginx-service.yaml` file creates a Kubernetes Service named `nginx-service` to direct traffic to NGINX pods based on the `app: nginx` label.

### How to Use

1. Clone this repository.
   ```bash
   git clone https://github.com/Ibrahim111101/WebApp-Aks.git
   cd WebApp-Aks
1. Build and push the Docker image to a container registry of your choice.
- docker build -t your-registry/your-repo:tag .
- docker push your-registry/your-repo:tag
2. Deploy the application to your Kubernetes cluster.
- kubectl apply -f nginx-deployment.yaml
- kubectl apply -f nginx-service.yaml
