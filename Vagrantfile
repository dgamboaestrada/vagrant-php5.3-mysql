# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  #Nombre de la box a utilizar
  config.vm.box = "precise32"

  #Url de donde Vagrant se descargara la box si no existe ya en el sistema
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Port fowarding 
  config.vm.network :forwarded_port, guest: 22, host: 5593
  
  # Private IP  
  config.vm.network :private_network, ip: "192.168.56.101"

  # Compartir un directorio de nuestro host con la VM
  config.vm.synced_folder "./project", "/var/www"

  config.vm.provision :shell, :path => "provision.sh"

end