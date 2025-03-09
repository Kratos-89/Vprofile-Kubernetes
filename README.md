# Kubernetes Orchestration of vProfile Application

## Overview

This project orchestrates the **vProfile** Java web application using **Kubernetes**. The application consists of a **Tomcat-based Java MVC app** integrated with **MySQL**, **RabbitMQ**, and **Memcached**, deployed on an AWS-managed Kubernetes cluster.

## Architecture

- **Ingress Controller**: Routes traffic from an **Application Load Balancer** to the Tomcat service.
- **Tomcat Deployment**: Hosts the vProfile Java application.
- **Microservices**:
  - **MySQL**: Persistent storage using Amazon EBS with a 3GB **Persistent Volume Claim (PVC)**.
  - **RabbitMQ**: Message broker for asynchronous communication.
  - **Memcached**: Caching layer for faster data retrieval.
- **Networking**:
  - Internal communication via Kubernetes service discovery.
  - External access managed through an **Ingress resource** linked to a Load Balancer.
- **Storage**:
  - Persistent Volume Claim (PVC) bound to **Amazon EBS** for MySQL data persistence.
  - Application configuration secured with **Kubernetes Secrets**.

## Deployment Steps

1. **Create a kubernetes cluster with two worker nodes**
   - Create it using KOPS.
   - Or Create it using AWS EKS
2. **Clone the repository**:
   ```bash
   git clone https://github.com/Kratos-89/Vprofile-Kubernetes/tree/main
   cd kubernetes-vprofile/
   ```
3. **Apply Kubernetes manifests**:
   ```bash
   cd kubedefs/
   kubectl apply -f .
   ```
4. **Verify Deployments & Services**:
   ```bash
   kubectl get pods
   kubectl get services
   ```
5. **Access the Application**:
   - Traffic is routed via Ingress to the **Tomcat service**.
   - Congigure a CNAME Record with your domain provider where the host name should be **vprofile** and value should be the aws application loadbalancer's endpoint.
   - Now access the application with http://vprofile.(Your domain name)/

## Key Features

✅ **Fully containerized Java MVC app** using Kubernetes.
✅ **Automated scaling & service discovery** for microservices.
✅ **AWS Integration**: EBS storage for MySQL, Load Balancer for external traffic.
✅ **Efficient caching & messaging** with Memcached & RabbitMQ.
✅ **Ingress-based URL routing** for simplified access.

## Technologies Used

- **Kubernetes** (Deployments, Services, Ingress, PVC, Secrets)
- **AWS** (EKS, EBS, Load Balancer)
- **Docker** (Containerization)
- **MySQL, RabbitMQ, Memcached**
- **Nginx** (Ingress Controller)

## Future Enhancements

- Implement **CI/CD pipeline** for automated deployments.
- Add **Horizontal Pod Autoscaler (HPA)** for dynamic scaling.
- Enhance security with **RBAC & Network Policies**.
