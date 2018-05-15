apt_repository 'virtualbox-5.2' do
  uri 'https://download.virtualbox.org/virtualbox/debian'
  arch 'amd64'
  distribution 'trusty'
  components ['contrib']
  key 'https://www.virtualbox.org/download/oracle_vbox.asc'
end

apt_package 'virtualbox-5.2'

