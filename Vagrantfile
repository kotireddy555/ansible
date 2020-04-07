# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure("2") do |config|

  config.vm.box = "geerlingguy/centos7"

  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :VirtualBox do |v|
    v.memory = 256
    v.linked_clone = true
  end
  config.vm.provision "ansible" do |ansible|
  ansible.playbook  = "playbook.yaml"
  ansible.compatibility_mode = '2.0'
end

#App servers

  config.vm.define "app1" do |app|
    app.vm.hostname = "orc-app1.test"
    app.vm.network :private_network, ip: "192.168.60.4"
  end

  config.vm.define "app2" do |app|
    app.vm.hostname = "orc-app2.test"
    app.vm.network :private_network, ip: "192.168.60.5"
  end

#DB Servers

  config.vm.define "db" do |app|
    app.vm.hostname = "orc-db.test"
    app.vm.network :private_network, ip: "192.168.60.6"
  end
end
