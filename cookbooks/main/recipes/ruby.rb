file "/home/#{node[:user]}/.gemrc" do
  content 'gem: --no-rdoc --no-ri'
  owner node[:user]
  group node[:user]
end

file "/home/#{node[:user]}/.irbrc" do
  content 'IRB.conf[:PROMPT_MODE] = :SIMPLE'
  owner node[:user]
  group node[:user]
end

%W[ /home/#{node[:user]}/code /home/#{node[:user]}/code/ruby].each do |path|
  directory path do
    owner node[:user]
    group node[:user]
  end
end

remote_file "/home/#{node[:user]}/code/ruby/debundle.rb" do
  source 'https://raw.github.com/ConradIrwin/pry-debundle/master/lib/pry-debundle.rb'
  owner node[:user]
  group node[:user]
end

file "/home/#{node[:user]}/.pryrc" do
  content <<-CODE
    require_relative 'code/ruby/debundle'
    Pry.config.prompt = Pry::SIMPLE_PROMPT
    if defined?(PryByebug)
      Pry.commands.alias_command 'c', 'continue'
      Pry.commands.alias_command 's', 'step'
      Pry.commands.alias_command 'n', 'next'
      Pry.commands.alias_command 'f', 'finish'
    end
  CODE
  owner node[:user]
  group node[:user]
end

directory "/home/#{node[:user]}/.bundle" do
  owner node[:user]
  group node[:user]
end

file "/home/#{node[:user]}/.bundle/config" do
  content <<-END.gsub(/^ {4}/, '')
    ---
    BUNDLE_PATH: .bundle
    BUNDLE_DISABLE_SHARED_GEMS: 0
  END
  owner node[:user]
  group node[:user]
end

include_recipe 'rubies'
include_recipe 'main::gems'
