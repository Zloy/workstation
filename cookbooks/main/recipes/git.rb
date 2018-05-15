file "/home/#{node[:user]}/.cvsignore" do
  content node[:git][:cvsignore_entries].join('\n')
  owner node[:user]
  group node[:user]

  not_if node[:git][:cvsignore_entries].empty?
end

=begin
node[:git][:settings].each do |setting, value|
  execute "git #{setting}" do
    user node[:user]
    group node[:user]
    command "git config --file /home/#{node[:user]}/.gitconfig #{setting} #{value}"
  end
end
=end

template "/home/#{node[:user]}/.gitconfig" do
  source 'gitconfig'
  user node[:user]
  group node[:user]
  variables(github_user: node[:github_user],
            github_email: node[:github_email])
end

