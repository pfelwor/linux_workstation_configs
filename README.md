# linux_workstation_configs
mostly used configs for linux-workstation

## Files are located in your homedir or relatively put to this

### Some of the Files are only meant to expand existing ones:
  - .bashrc

### and some have to be modified before using them (i.e. changing email-address)
  - .gitconfig

## Common tools to be installed

### not in OS-Repo by default

azure-cli:
https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

helm:
https://helm.sh/docs/using_helm/

terraform:
https://www.terraform.io/downloads.html

kubectl:
https://kubernetes.io/docs/tasks/tools/install-kubectl/

kubectx:
https://github.com/ahmetb/kubectx

veracrypt:
https://www.veracrypt.fr/en/Downloads.html

atom:
```console
$ wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
$ sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
$ sudo apt-get update
$ sudo apt-get install atom
```

visual studio code:
https://code.visualstudio.com/docs/setup/linux


### FROM OS-default-REPOs
  - git
  - git k
  - vim
  - docker
  - docker-compose
  - ansible
  - keepassx
