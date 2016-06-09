# vi: set ft=ruby ts=2 sw=2 expandtab:

Vagrant.configure(2) do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "1024",
      "--name", "ethereum"
    ]
  end
  config.vm.network :forwarded_port, guest: 8545, host: 8545

=begin # Bug: https://github.com/mitchellh/vagrant/issues/7368
  $script = <<SCRIPT
apt-get install -y software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
add-apt-repository -y ppa:ethereum/ethereum-dev
apt-get update
apt-get install -y git nodejs nodejs-legacy npm ethereum
npm install -g truffle ethereumjs-testrpc
SCRIPT
  config.vm.provision "shell", inline: $script

  # Forma alternativa (script em arquivo externo):
#  config.vm.provision "shell", path: "provision.sh"
=end

end
