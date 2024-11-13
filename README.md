# Day 1 Project: Automate Server Setup with Bash Scripting on Amazon Linux

Objective: Create a bash script to automate the setup of a basic server environment on Amazon Linux. This will include updating the system, installing essential packages (like Git and Docker), creating a new user, and setting up a simple firewall.

## Project Requirements:
Amazon Linux: You'll use Amazon Linux (1 or 2).
Bash scripting: Automate the steps with a bash script.
Docker installation: Ensure Docker is installed via the script.
User management: Create a new user with sudo privileges.
Firewall configuration: Set up a basic firewall to allow only SSH (port 22) and HTTP (port 80) traffic.

## Steps to Implement:
Prepare the Amazon Linux environment:
- Start an Amazon Linux instance (on AWS EC2 or a local setup that supports Amazon Linux).

Write the bash script:
- Create a bash script (server_setup_amazon.sh) to do the following:
  - Updates the system (yum update).
  - Installs necessary packages (git, curl, and docker).
  - Creates a new user (username can be passed as an argument).
  - Gives the new user sudo privileges.
  - Configures a basic firewall using firewalld.