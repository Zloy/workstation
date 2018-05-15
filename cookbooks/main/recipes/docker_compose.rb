apt_package 'python-pip'

execute 'Install docker compose' do
  command 'pip install docker-compose'
  user 'root'
end
