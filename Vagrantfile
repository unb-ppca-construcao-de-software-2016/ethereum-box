# vi: set ft=ruby ts=2 sw=2 expandtab:

Vagrant.configure(2) do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "1024",
      "--name", "ethereum"
    ]
  end
  config.vm.network :forwarded_port, guest: 8545, host: 8545

  $script = <<SCRIPT
apt-get install -y software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
add-apt-repository -y ppa:ethereum/ethereum-dev
apt-get update
apt-get install -y git nodejs nodejs-legacy npm ethereum vim tree
npm install -g truffle ethereumjs-testrpc
SCRIPT
  config.vm.provision "shell", inline: $script

  config.vm.provision "shell", inline: "source /vagrant/functions.sh", privileged: false
end
