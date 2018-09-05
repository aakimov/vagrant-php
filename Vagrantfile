# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "php56"
  config.vm.synced_folder "../../repositories/magento", "/vagrant/magento"

  config.vm.provider :virtualbox do |vb|
    vb.name = "php56"
    vb.memory = 2048
  end

  config.vm.provision :shell do |shell|
    shell.path = "shell/root.sh"
  end
end
