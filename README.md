# How to define the inventory file?
ansible-inventory -i inventory --list
https://www.digitalocean.com/community/tutorials/how-to-set-up-ansible-inventories

# Ping all the hosts in the inventory
ansible all -i inventory -m ping -u root

# Run the ansible playbook
ansible-playbook -i inventory -u root deploy.yml


# Note status ATM:
- ansible is gonna run the docker compose
- then, ansible is gonna execute the script to install wordpress once the docker-compose has finished

# TODO
- restart: always ??
- passwords
- put the name in a var and retrieve it from the yml
- figure out the domain name (https://www.duckdns.org/domains)