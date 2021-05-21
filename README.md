# ELKStack-Project

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

- https://github.com/AveonG/ELKStack-Project/blob/main/Diagrams/Network%20_Topology_Diagram.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

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

Load balancing ensures that the application will be highly reliable, in addition to restricting access to the network.
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

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 24.99.128.156        |
| Web1 Sec | No                  | 10.1.0.4             |
| Web2 Sec | No                  | 10.1.0.4             |
| Web3 Sec | No                  | 10.1.0.4             |
| ELK-VM   | Yes                 | 10.1.0.4             |
|          |                     |24.99.128.156         |
|Load
|Balancer

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

- https://github.com/AveonG/ELKStack-Project/blob/main/Images/sebp:elk%20screenshoot.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
