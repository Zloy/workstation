Chef::Resource.send(:include, Main::Helper)

node[:packages][:install][:cli].each_pair do |name, options|
  if options && options['ppa']
    apt_repository name do
      uri options['ppa']
    end
  end

  package name
end

node[:packages][:install][:gui].each_pair do |name, options|
  if options && options['ppa']
    apt_repository name do
      uri options['ppa']
      only_if { has_gui? }
    end
  end

  package name do
    only_if { has_gui? }
  end
end

