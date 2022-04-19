# 🌩️ Cloud-1

## ℹ️ Description

This project is a 42 assignment to learnt how to remotely deploy a website on an instance provided by a cloud provider. The deployment has been fully automated using Ansible.

## 🔨Usage

### Pre requisites

You should have a server available (you should be able to connect as root) that can run python3 and ansible on your local machine.

### Configuration

1. Populate the `inventory` file by including the IPs of your servers.
2. Populate the `roles/copy_resources/files/✨✨RockStart✨✨/.env` by adding the required information.

### Set up and deploy the website

```
ansible-playbook -i inventory setup.yml --ask-become-pass
ansible-playbook -i inventory deploy.yml --ask-become-pass
```

## 💡Considerations:

- We left the 8080 port opened to be able to access PHPMyAdmin, to close it we can just remove the port redirection ("8080:80") on the docker-compose.yml
- For the correction: the given IP may differ from the one we got our domain name for. Therefore, the DNS might break and we'll have to modify the /etc/hosts file.
