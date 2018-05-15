package 'screen'

template "/home/#{node[:user]}/.screenrc" do
  source 'screenrc'
  user node[:user]
  group node[:user]
end

