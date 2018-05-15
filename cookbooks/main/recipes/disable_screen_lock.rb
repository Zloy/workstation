execute 'Disable screen lock' do
  user ENV['SUDO_USER']
  command 'dconf write /org/gnome/desktop/screensaver/lock-enabled false'
end

