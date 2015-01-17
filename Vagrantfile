# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "robin/trusty64"
  config.vm.hostname = "exaweb-backup"

  config.vm.provision "shell", inline: $shell
  if Vagrant.has_plugin?("vagrant-vbguest") then
  	config.vbguest.auto_update = false
  end
end

$shell = <<-CONTENTS
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y python-software-properties software-properties-common
apt-add-repository -y ppa:duplicity-team/ppa
apt-get update
apt-get install -y duplicity ncftp lftp rsnapshot tree
echo "cd /vagrant" >> /home/vagrant/.bashrc
echo "cd /vagrant" >> /root/.bashrc
chmod -x /etc/update-motd.d/*
CONTENTS
