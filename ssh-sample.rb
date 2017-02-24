require "net/ssh"
require "net/scp"

SERVER = "192.168.33.10"
USER = "vagrant"
PASS = "vagrant"

opt = {
    :keys => '/Users/nagakuray/Desktop/vagrant/test/.vagrant/machines/default/virtualbox/private_key',
    :passphrase => '',
    :port => 22
}


Net::SSH.start('192.168.33.10' , 'vagrant' , opt) do |ssh|
  ssh.exec!('rm -f /tmp/read_text.rb*')
  ssh.exec!('ls -l /tmp')
  ssh.scp.upload!("./read_text.rb", "/tmp/read_text.rb1")
  puts ssh.exec!('ls -l /tmp')
  ssh.scp.download!("/tmp/read_text.rb1","./")


end
