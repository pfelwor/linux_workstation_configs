# linux_workstation_configs
mostly used configs for my linux-workstation used for development in a cloud-infrastructure-environment

## Files are located in your homedir or relatively put to this

To let us do the work for you, just execute setup.sh in this repository:
```console
$ ./setup.sh
```

#### Some of the Files are only meant to expand existing ones (setup.sh will handle this for you):
  - .bashrc

#### and some have to be modified before using them (i.e. changing email-address) - setup.sh also covers this:
  - .gitconfig

## Common tools you should consider to install on your machine

### Packages not in OS-Repo by default

azure-cli:
https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

helm:
https://helm.sh/docs/using_helm/#installing-helm

terraform:
https://www.terraform.io/downloads.html

kubectl:
https://kubernetes.io/docs/tasks/tools/install-kubectl/

kubectx:
https://github.com/ahmetb/kubectx

minikube:
https://kubernetes.io/docs/tasks/tools/install-minikube/

veracrypt:
https://www.veracrypt.fr/en/Downloads.html

apache directory studio:
http://directory.apache.org/studio/download/download-linux.html

visual studio code:
https://code.visualstudio.com/docs/setup/linux

pdk (puppet development kit):
https://puppet.com/docs/pdk/1.x/pdk_install.html
```console
$ wget https://apt.puppet.com/puppet-tools-release-bionic.deb
$ sudo dpkg -i puppet-tools-release-bionic.deb
$ sudo apt-get update
$ sudo apt-get install pdk
```

atom:
```console
$ wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
$ sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
$ sudo apt-get update
$ sudo apt-get install atom
```


### recommended packages from OS-default-Repos
  - git
  - gitk
  - vim
  - tmux
  - gpg
  - docker
  - docker-compose
  - ansible
  - keepassx
  - openjdk-8-jdk


## the atom_package_list-file can be used to install common used packages (only community-packages included here - built-in ones you want to have enabled are not listed!):
```console
$ apm install --packages-file ./atom_package_list
# to export a list from your current installation:
$ apm list --installed --bare > atom_package_list
```
