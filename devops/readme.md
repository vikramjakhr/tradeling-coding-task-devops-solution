## Devops Readme

Tradling CI/CD
=======
Below are the steps to deploy tradling's todoist with fully implemented CI/CD Pipelines.

##### Changes:
* Added [Dockerfile](/Dockerfile)
* Added [Jenkinsfile](/Jenkinsfile) for CI/CD
* Added [Terraform](/terraform)
* Added [Helm Charts](/k8)

##### Pre-Requisites: 
* A Jenkins server (for executing Jenkins pipelines)
* A Github repository
* Docker
* Helm
* Kubernetes / minikube

##### CI/CD steps:

![alt text](https://github.com/vikramjakhr/ruby-sample/blob/vikram-assignment/cicd.png)

1) Checkout the code from repository
2) Running test cases and code coverage 
3) Publish the test cases results
4) Update the version/tag
5) Build the docker image for specified environment with specified tag
6) Deploy the application
7) Post action (e.g. Notify on slack of email)