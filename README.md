# Workstation

This cookbook sets up a new workstation from the scratch.

Fork the repo, adjust recipes and attributes before applying it.

Also edit `config/node.json`

## Applying

* Login to your brand new shiny workstation
* Choose appropriate Chef DK package and get it from [official download page](https://downloads.chef.io/chefdk), e.g. `wget https://packages.chef.io/files/stable/chefdk/1.4.3/ubuntu/14.04/chefdk_1.4.3-1_amd64.deb`
* Install chefdk, e.g. like this `sudo dpkg -i chefdk_1.4.3-1_amd64.deb`
* Clone your forked repo
* cd to ./workstation
* Edit `github_user`, `github_email` attributes in [config/node.json](config/node.json) file
* Execute `bin/run` to run all recipes or `bin/run git` to run `git` recipe or `bin/run %recipe%` for other recipe

## TODO

* Extract attributes from recepies
* Fix cookbook syntax with foodcritic

## GOTCHAS

* Doesn't work with recent Chef DK versions due to dependency `chruby_install` cookbook incompatibility. If you get a message like `ERROR: undefined method platform for #<Chef::Node::Attribute ...` try use Chef DK 1.4.3 version

## System tweaks

* Disable screen lock by screensaver for 5 minutes inactivity in `recipe[main::disable_screen_lock]`

## Application full list

**Bold** packages are not implemented yet

* alsa-base
* apache2-utils
* cairo-dock
* chromium-browser
* classicmenu-indicator
* coffeescript
* compiz
* compiz-plugins
* compizconfig-settings-manager
* copyq
* docker ce
* docker compose
* **dropbox**
* easystroke
* evoluspencil
* furiusisomount
* exuberant-ctags
* graphviz
* gvim
* **keepassx**
* nethogs
* meld
* mscgen
* nodejs
* pgadmin3
* putty
* gtk-recordmydesktop
* ruby
* **rubymine**
* sqliteman
* **skype**
* tilda
* **touchpad-indicator**
* transmission-gtk
* transgui
* unetbootin
* variety
* vagrant
* virtualbox
* vim
* vuze
* webstorm
* wget
* wmctrl
* wscat
* xclip
* xdotool
* xsel
* yandex-disk
* zim

## Berksfile update

When added a cookbook to Berksfile execute:

    berks install -d
    berks vendor vendor/cookbooks

and add update vendor directory to git
