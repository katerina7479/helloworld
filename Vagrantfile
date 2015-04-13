Vagrant.configure("2") do |config|
    config.trigger.before [:reload, :halt], stdout: true do
        `rm .vagrant/machines/default/virtualbox/synced_folders`
    end

    config.vm.box = "ubuntu/trusty64"
    
    config.vm.network "forwarded_port", guest: 8000, host: 8000

    config.berkshelf.berksfile_path = "vagrant/Berksfile"
    config.berkshelf.enabled = true

    config.vm.provider "lxc" do |lxc, override|
        override.vm.box = "fgrehm/trusty64-lxc"
    end

    config.vm.provision "chef_solo" do |chef|
        chef.roles_path = "vagrant/roles"
        chef.add_role "helloworld/local"
    end
end