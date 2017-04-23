VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, guest: 6379, host: 6379, host_ip: "127.0.0.1"

  config.vm.provider :virtualbox do |vbox|
    vbox.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.synced_folder "storage/", "/var/redis/storage", create: true
  config.vm.provision :shell, :path => "init.sh"
end
