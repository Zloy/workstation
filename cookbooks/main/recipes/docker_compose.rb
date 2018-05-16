apt_package %w(python-pip python-dev)

execute 'Install docker compose' do
  command 'pip install docker-compose'
  user 'root'
end
