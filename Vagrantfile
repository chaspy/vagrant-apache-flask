VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"

  config.vm.define :apc do | apc |
    apc.vm.hostname = "apache"
    apc.vm.network :private_network, ip: "192.168.33.100"#, virtualbox__intnet: "intnet"
    apc.vm.provision :shell, :path => "./init.sh",:privileged   => true
  end
end
