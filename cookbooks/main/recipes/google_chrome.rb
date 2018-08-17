execute 'Install google chrome key' do
  command 'curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -'
  user 'root'
end

execute 'Update repo info' do
  command %(sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && apt-get update)
  user 'root'

  not_if { ::File.exist?('/etc/apt/sources.list.d/google-chrome.list') }
end

apt_package %w(libnss3 google-chrome-stable)

