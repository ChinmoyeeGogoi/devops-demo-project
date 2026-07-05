# DevOps Demo Project — CI/CD Pipeline

A complete CI/CD pipeline deploying a Python Flask app 
using Jenkins, Docker, and Kubernetes.

## Architecture
GitHub → Jenkins → Docker → Kubernetes (Minikube)

## Tools Used
- Jenkins — pipeline orchestration
- Docker — containerization
- Kubernetes/Minikube — container orchestration
- Python Flask — web application
- GitHub — source control

## Pipeline Stages
1. Checkout — pulls latest code from GitHub
2. Build Docker Image — packages app into container
3. Deploy to Kubernetes — runs 2 replicas via Minikube

## Key Concepts Demonstrated
- Declarative Jenkins pipeline (Jenkinsfile)
- Docker socket mounting for Jenkins-Docker integration
- Kubernetes Deployments, Services, liveness probes
- Cross-platform kubeconfig configuration
- Container networking (host.docker.internal)

## How to Run
1. Start Jenkins container with Docker socket mounted
2. Start Minikube
3. Trigger Jenkins pipeline
4. Run: minikube service covid-app-service
