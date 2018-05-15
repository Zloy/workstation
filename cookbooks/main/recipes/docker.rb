apt_repository 'docker-ce' do
  uri 'https://download.docker.com/linux/ubuntu'
  arch 'amd64'
  distribution 'trusty'
  components ['stable']
  key 'https://download.docker.com/linux/ubuntu/gpg'
end

apt_package 'docker-ce'

