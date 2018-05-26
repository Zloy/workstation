execute 'Install nodejs' do
  command 'curl -sL https://deb.nodesource.com/setup_10.x | bash -'
  user 'root'
end

apt_package %w(nodejs build-essential)

