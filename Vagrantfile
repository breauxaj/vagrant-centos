# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7"

  config.ssh.insert_key = false

  config.vm.provision "shell", :path => "bin/setup.sh"
end