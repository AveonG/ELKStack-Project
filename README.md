# ELKStack-Project

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

- https://github.com/AveonG/ELKStack-Project/blob/main/Diagrams/Network%20_Topology_Diagram.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

  - https://github.com/AveonG/ELKStack-Project/blob/main/Ansible/OffSecInstall.yml
  - https://github.com/AveonG/ELKStack-Project/blob/main/Ansible/install-elk.yml
  - https://github.com/AveonG/ELKStack-Project/blob/main/Ansible/filebeat-playbook.yml
  - https://github.com/AveonG/ELKStack-Project/blob/main/Ansible/metricbeat-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable and resilient, in addition to restricting access to the network.
- What aspect of security do load balancers protect? 
The load balancer plays an important security role as computing moves and routing client requests across all servers capable of fulfilling those request in a way that maximizes speed and capacity to ensure that no one server is being overworked. The load balancer plays a role of a traffic cop you could say.

- What is the advantage of a jump box?
The advantage of using a jump box is to limit the access to any of the other machines that are on the network. The jumpbox is the point you would have to enter into to be able to access the network. By implementing ssh keys instead of paswords a person would have to have the key pair that is stored on my computer to even get acess to the jump box. It a secure method to use and only allows a single point of entry which is easier to monitor.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system files.
- What does Filebeat watch for?
Filebeat is for the monitoring of events, log data, and files through the elk sever then proceeds to move them to another part of Kibana called Elasticsearch or the Logstash area.

- What does Metricbeat record?
Metricbeat is used to periodically collect metrics from the operating systems and from the services running on the server then will ship them out to the output that you assign such as Elasticsearch or Logstash.

The configuration details of each OffSec VMs and ELK machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump-Box | Gateway  | 10.1.0.4   | Linux (Ubuntu)   |
| Web-1 SEC| Webserver| 10.1.0.5   | Linux (Ubuntu)   |
| Web-2 SEC| Webserver| 10.1.0.6   | Linux (Ubuntu)   |
| Web-3 SEC| Webserver| 10.1.0.7   | Linux (Ubuntu)   |
| ELK-VM   | Webserver| 10.2.0.4   | Linux (Ubuntu)   | 

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox-OffSec machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 24.99.128.156

Machines within the network can only be accessed by the JumpBox-Offsec machine.

- Which machine did you allow to access your ELK VM?
I allowed only the JumpBox-OffSec machine to access the ELK VM through the ansible container.

- What was its IP address?
The IP address of that machine is 10.1.0.4.

A summary of the access policies in place can be found in the table below.

| Name          | Publicly Accessible | Allowed IP Addresses       |
|---------------|---------------------|----------------------------|
| Jump Box      | Yes                 | 24.99.128.156              |
| Web1 Sec      | No                  | 10.1.0.4                   |
| Web2 Sec      | No                  | 10.1.0.4                   |
| Web3 Sec      | No                  | 10.1.0.4                   |
| ELK-VM        | Yes                 |  10.1.0.4 24 24.99.128.156 |
| Load Balancer | Yes                 | 24.99.128.156              |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible?_
The main advantage of automation configurations with Ansible is that it is so powerful that it can configure multiple machines at once using the Ansible tool instead of having to go in and do one machine at a time. This can help increase efficiency and profits for a company. This also can reduce the downtime of a network.

The playbook implements the following tasks:
- Installation of Docker.io
- Installation of pip3 along with the Python docker module
- Increase in virtual memory
- Download and launches a docker elk conatiner
- List ports elk runs on and enable the service docker to start on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

- https://github.com/AveonG/ELKStack-Project/blob/main/Images/sebp:elk%20screenshoot.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- The webservers of the OffSec virtual machines. Web1-OffSec 10.1.0.5, Web 2 -OffSec 10.1.0.6, Web 3-OffSec 10.1.0.7.

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects the system log data so we can monitor the traffic throughout devices.
- Metric beat is used to collect the data from the operating system which we can use to monitor the metrics of CPU data.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook files (OffSec-install, install-elk, filebeat-playbook, and metricbeat-playbook file to /etc/ansible/roles.
- Update the hosts file to include the the webservers machines internal IP addresses under the uncommented webservers section. Add the internal IP of the elk vm under the elk uncommented section.
- Run the playbook, which is ansible-playbook [playbook name] and navigate to http://[your.ELK-VM.External.IP]:5601/app/kibana to check that the installation worked as expected. In my case it was http://40.77.27.250:5601/app/kibana.

- Which file is the playbook?
The playbook files are any files that end with .yml which stands for YAML.

-  Where do you copy it?
You would copy the playbook files to the ansible container in the /etc/ansible/roles after you get access to the jump box and connect to the ansible docker container.

- Which file do you update to make Ansible run the playbook on a specific machine?
You would update the hosts file that is located in the /etc/ansible directory.

-  How do I specify which machine to install the ELK server on versus which to install Filebeat on?
You would specify which machine to install the elk server on in the playbook in the host area. You would specify what machine to install the ELK server with the hosts column being labeled with elk and to specify what machines you woud install filebeat on you would install on the webservers you are going to monitor so you would put in the host column in the playbook webservers. The hosts file you updated under webservers and elk with the IP addresses, you would be putting the name so webservers for the webservers and the elk for the elk server.

- Which URL do you navigate to in order to check that the ELK server is running?
http://[your.ELK-VM.External.IP]:5601/app/kibana
