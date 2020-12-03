# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.define :virtualM2 do |virtualM2|
	virtualM2.vm.box = "bento/centos-7"
	virtualM2.vm.network :private_network, ip: "209.191.50.2"
	virtualM2.vm.hostname = "virtualM2"
	config.vm.provision "shell", path: "virtualM2.sh"
	
end
config.vm.define :firewall do |firewall|
	firewall.vm.box = "bento/centos-7"
	firewall.vm.network :public_network, ip: "192.168.0.65"
	firewall.vm.network :private_network, ip: "209.191.50.3"
	firewall.vm.hostname = "firewall"
	config.vm.provision "shell", path: "firewall.sh"
 
end
end
