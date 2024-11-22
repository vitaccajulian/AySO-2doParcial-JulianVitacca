ssh-keygen
ll .sh/
ll .ssh/
cat .ssh/id_rsa.pub
ssh vagrant@192.168.56.10
ssh vagrant@192.168.56.3
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ll
cd UTN-FRA_SO_Ansible/
ll
cd ejemplo_02
ll
vim inventory
vim playbook.yml
ansible-playbook –i inventory playbook.yml
vim playbook.yml
ansible-playbook –i inventory playbook.yml
ansible-playbook -i inventory playbook.yml
