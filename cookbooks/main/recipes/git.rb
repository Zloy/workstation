file "/home/#{node[:user]}/.cvsignore" do
  content node[:git][:cvsignore_entries].join('\n')
  owner node[:user]
  group node[:user]

  not_if node[:git][:cvsignore_entries].empty?
end

node[:git][:settings].each do |setting, value|
  execute "git #{setting}" do
    user node[:user]
    group node[:user]
    command "git config --file /home/#{node[:user]}/.gitconfig #{setting} #{value}"
  end
end
