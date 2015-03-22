Vagrant::Config.run do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.network :hostonly, ip

  config.vm.provider :lxc do |lxc|
	config.vm.box = 'fgrehm/trusty64-lxc'  		
  end

  config.vm.provision "chef_solo" do |chef|
    #chef.add_recipe "apache"
  end
end