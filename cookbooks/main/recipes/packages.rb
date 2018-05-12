Chef::Resource::AptPackage.send(:include, Main::Helper)

node[:packages][:install][:cli].each do |name|
  package name
end

node[:packages][:install][:gui].each do |name|
  package name do
    only_if { has_gui? }
  end
end

