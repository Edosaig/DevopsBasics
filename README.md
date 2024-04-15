Implementing CI/CD for application Deployment Across Multiple Servers

This project involves automating application deployment across multiple servers. The following tools were used in the course of this project. Ubuntu, Git, Java, Apache2, Maven, Jenkins, Docker, Ansible, and Python 3. Terraform. YAML. 
In this project, I deployed 6 Ubuntu servers on AWS using Terraform. The first server is the Jenkins server. On the Jenkins server, I used Git to pull codes from my GitHub repository and installed Java, Apache 2, Maven, and Jenkins. After completing the installations, I used integrated Maven in Jenkins, which helped in building the codes into artifacts. 
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/4a02ba3c-2481-4e4b-859e-ba390f8a1ec3)
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/1888f842-ada5-4ccc-8e81-d11a51a8181c)

Server 2 is the Docker server, it consists of the Docker file and the artifact, which was sent from Jenkins via SSH connection. Docker was used to build artifacts into images which were run in the Docker container. 
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/76ba3315-7841-4eed-9b58-f043ab1d4ea4)
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/265e5b5b-1d96-4a88-9bfe-8644198580fa)
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/bb7e4abf-b90b-4742-8746-7dace4f1ce3d)

Server 3 is the Ansible server or controller. Ansible was deployed to help automate the process of CI/CD due to limitations from Docker. The remaining servers are called the Nodes, where the applications are deployed simultaneously from the Ansible server. The controller consists of Docker installation, the artifact, the ansible-playbook written in YAML, and the host file which contains the IP addresses of all nodes where the automatic deployment of the application is supposed to occur. An SSH connection is established between the Jenkins server and controller, controller, and all nodes. All configurations were carried out in Jenkins to ensure that all builds from Jenkins is automatically replicated on all nodes.
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/2a2ca0b0-bca2-45ff-9198-a45d6300b014)
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/204e48e9-cb2d-429c-a75b-ffc69c5b7974)
![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/c2bd67a1-2c5c-46f0-a019-ce5534cfb223)

![image](https://github.com/Edosaig/DevopsBasics/assets/107155943/a88c8a8b-11bd-469b-a03f-bab71cd1067e)
