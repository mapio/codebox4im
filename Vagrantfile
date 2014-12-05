Vagrant.configure("2") do |config|

  if ARGV[0] == 'up' || ARGV[0] == 'provision' || ARGV[0] == 'reload'
    if File.exists?( 'provision.sh' )
      $provisioning_script = File.open( 'provision.sh' ).read
      $stderr.puts( "Using 'provision.sh' for provisioning...\n" )
    else
      require 'net/http'
      $provisioning_script = Net::HTTP.get(URI('https://gist.githubusercontent.com/mapio/ef23edceb8a5709b87d0/raw/provision.sh'))
      $stderr.puts( "Downloaded gist #ef23edceb8a5709b87d0 for provisioning...\n" )
      File.open( 'provision.sh', 'w' ) { |f| f.write( $provisioning_script ); f.close() }
    end
    $audio = 'null'
    if Vagrant::Util::Platform.linux?
      $audio = 'alsa'
    elsif Vagrant::Util::Platform.darwin?
      $audio = 'coreaudio'
    elsif Vagrant::Util::Platform.windows?
      $audio = 'dsound'
    end
    $stderr.puts( "Audio will be set to '" + $audio + "'\n" )
  end


  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
  config.vm.provider "virtualbox" do |v|
      v.customize ['modifyvm', :id, '--audio', $audio, '--audiocontroller', 'ac97']
  end
  config.vm.define :codebox4im do |codebox4im|
    codebox4im.vm.box = "ubuntu/trusty32"
    codebox4im.vm.network :forwarded_port, guest: 80, host: 8000
    codebox4im.vm.provision :shell, :inline => $provisioning_script
  end
  config.vm.post_up_message = "Apri l'indirizzo http://127.0.0.1:8000/start/ per iniziare!"
end
