linux_workstation_configs
=========

Ansible role to configure a linux workstation for cloud and automation development.
Currently only supporting (x)ubuntu

Requirements
------------

You need ansible to be installed on your machine:

```console
# sudo apt-get install -y ansible
```

Role Variables
--------------

set in defaults/main.yml:

```yaml
install_atom_packages: false
```
if you want atom-packages to be installed, you have to overwrite this variable to be "true"

You also have to set variables for:

```yaml
git_username:
git_mailaddress:
```

to be set in .gitconfig-file

Dependencies
------------

You have to ensure that you execute ansible with the user you want to work later on as it will place config-files in the users home directory.

Be sure that the user is in sudoers group to be possible to install packages.

Example Playbook
----------------

call this role with a site.yml looking like:

```yaml
- import_playbook: linux_workstation_configs.yml
```

and linux_workstation_configs.yml with content (in this case we connect with a user and then use sudo):

```yaml
- hosts: foo
  vars:
    git_mailaddress: <MAILADDRESS>
    git_username: <GIT_USERNAME>
  remote_user: <USER>
  roles:
    - linux_workstation_configs
```

using inventory file hosts.yml like:

```yaml
foo:
  hosts:
    <IP>:
```

and this role in roles-directory, just by typing:

```console
# ansible-playbook -i hosts linux_workstation_configs.yml --key-file "<private-ssh-key>"
```

### other possibility is to just execute the playbook localy:

```console
# ansible-playbook --connection=local --inventory 127.0.0.1, <PLAYBOOK>
```

License
-------

BSD

Author Information
------------------

Philipp Felwor
