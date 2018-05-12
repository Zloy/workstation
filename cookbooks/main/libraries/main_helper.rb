module Main
  module Helper

    include Chef::Mixin::ShellOut

    def has_gui?
      cmd = shell_out!('which startx', {:returns => [0,1]})
      cmd.stderr.empty? && (cmd.stdout =~ /\/startx/)
    end
  end
end
