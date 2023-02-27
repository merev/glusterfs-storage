# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_EXPERIMENTAL'] = "disks"

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.box_download_insecure=true
  config.vm.disk :disk, size: "15GB", name: "extra_storage1"

  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.memory = 1024
    v.cpus = 1
  end
  
  # CentOS Stream 8
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "merev/centos-stream"
    vm1.vm.box_version = "8"
    vm1.vm.hostname = "vm1"
    vm1.vm.network "private_network", ip: "192.168.99.101"
    vm1.vm.synced_folder "shared/", "/shared"
    vm1.vm.provision "shell", path: "initial-config/fedora/add_hosts.sh"
    vm1.vm.provision "shell", path: "initial-config/fedora/server-setup.sh"
  end
  
  # CentOS Stream 8
  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "merev/centos-stream"
    vm2.vm.box_version = "8"
    vm2.vm.hostname = "vm2"
    vm2.vm.network "private_network", ip: "192.168.99.102"
    vm2.vm.synced_folder "shared/", "/shared"
    vm2.vm.provision "shell", path: "initial-config/fedora/add_hosts.sh"
    vm2.vm.provision "shell", path: "initial-config/fedora/server-setup.sh"
    vm2.vm.provision "shell", path: "initial-config/fedora/configuration-setup.sh"
  end

  # CentOS Stream 8
  config.vm.define "vm3" do |vm3|
    vm3.vm.box = "merev/centos-stream"
    vm3.vm.box_version = "8"
    vm3.vm.hostname = "vm3"
    vm3.vm.network "private_network", ip: "192.168.99.103"
    vm3.vm.synced_folder "shared/", "/shared"
    vm3.vm.provision "shell", path: "initial-config/fedora/add_hosts.sh"
    vm3.vm.provision "shell", path: "initial-config/fedora/client-setup.sh"
  end  
  
  # Debian 11
  config.vm.define "vm4" do |vm4|
    vm4.vm.box = "merev/debian-11"
    vm4.vm.hostname = "vm4"
    vm4.vm.network "private_network", ip: "192.168.100.104"
    vm4.vm.synced_folder "shared/", "/shared"
    vm4.vm.provision "shell", path: "initial-config/debian/add_hosts.sh"
    vm4.vm.provision "shell", path: "initial-config/debian/server-setup.sh"
  end

  # Debian 11
  config.vm.define "vm5" do |vm5|
    vm5.vm.box = "merev/debian-11"
    vm5.vm.hostname = "vm5"
    vm5.vm.network "private_network", ip: "192.168.100.105"
    vm5.vm.synced_folder "shared/", "/shared"
    vm5.vm.provision "shell", path: "initial-config/debian/add_hosts.sh"
    vm5.vm.provision "shell", path: "initial-config/debian/server-setup.sh"
    vm5.vm.provision "shell", path: "initial-config/debian/configuration-setup.sh"
  end

  # Debian 11
  config.vm.define "vm6" do |vm6|
    vm6.vm.box = "merev/debian-11"
    vm6.vm.hostname = "vm6"
    vm6.vm.network "private_network", ip: "192.168.100.106"
    vm6.vm.synced_folder "shared/", "/shared"
    vm6.vm.provision "shell", path: "initial-config/debian/add_hosts.sh"
    vm6.vm.provision "shell", path: "initial-config/debian/client-setup.sh"
  end

end
