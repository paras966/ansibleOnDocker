# ansibleOnDocker
Ansible setup on docker container

**Pull and Run the Ansible node Docker Image**

I have created an Ansible server image and uploaded it to Docker Hub. To use this image, you can pull it from the Docker registry to your local system using the following command:

docker pull paraspatil/ansible-node

To create a container by running a Docker image, use the following command:

docker run -it --name ansibleContainerNode1 ansible-node

**Pull and Run the Ansible server Docker Image**

Similarly, to use ansible node image, you can pull it from the Docker registry to your local system using the following command:

docker pull Paraspatil/ansible-server

To create a container by running a Docker image, use the following command:

docker run -it --name ansibleContainerServer1 ansible-server

When creating a container, you will be prompted to enter the IP addresses of the nodes you wish to connect with the Ansible server. Start by specifying the number of nodes you want to connect, and then provide the individual IP addresses for each node.

READ LINKED_IN Article for setting up - 

