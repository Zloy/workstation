execute 'Install nodejs repo' do
  command 'curl -sL https://deb.nodesource.com/setup_10.x | bash -'
  user 'root'
end

apt_package %w(nodejs build-essential)

execute 'Upgrade npm' do
  command 'npm i -g npm@6.2.0'
  user 'root'
end

