Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.provider "lxc" do |lxc, override|
        override.vm.box = "fgrehm/trusty64-lxc"
    end

    config.vm.provision "chef_solo" do |chef|
        #chef.add_recipe "apache"
    end
end