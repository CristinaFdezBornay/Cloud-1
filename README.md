# How to define the inventory file?
ansible-inventory -i inventory --list
https://www.digitalocean.com/community/tutorials/how-to-set-up-ansible-inventories

# Ping all the hosts in the inventory
ansible all -i inventory -m ping -u root

# Run the ansible playbook
ansible-playbook -i inventory -u root deploy.yml

