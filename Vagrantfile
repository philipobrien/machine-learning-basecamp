# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  # config.vm.synced_folder SMARTAPPI_DEV_ENV_PATH, "/home/vagrant/repos"
  config.vm.synced_folder ".",   "/vagrant"
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end
end