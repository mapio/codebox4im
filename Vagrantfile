require 'net/http'
$provisioning_script = Net::HTTP.get(URI('https://gist.githubusercontent.com/mapio/ef23edceb8a5709b87d0/raw/provision.sh'))

Vagrant.configure("2") do |config|
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
  if Vagrant::Util::Platform.darwin?
    config.vm.provider "virtualbox" do |v|
      v.customize ['modifyvm', :id, '--audio', 'coreaudio', '--audiocontroller', 'ac97']
    end
  end
  if Vagrant::Util::Platform.windows?
    config.vm.provider "virtualbox" do |v|
      v.customize ['modifyvm', :id, '--audio', 'dsound', '--audiocontroller', 'ac97']
    end
  end
  config.vm.define :codebox do |codebox|
  	codebox.vm.box = "ubuntu/trusty32"
    codebox.vm.network :forwarded_port, guest: 80, host: 8000
    codebox.vm.provision :shell, :inline => $provisioning_script
  end
  config.vm.post_up_message = "Apri l'indirizzo http://127.0.0.1:8000/start/ per iniziare!"
end
