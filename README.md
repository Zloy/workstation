# Workstation

This cookbook sets up a new workstation from the scratch.

Fork the repo, adjust recipies and attributes before applying it.

Also edit `config/node.json`

## Applying

* Login to your brand new shiny workstation
* Choose appropriate Chef DK package and get it from [official download page](https://downloads.chef.io/chefdk), e.g. `wget https://packages.chef.io/files/stable/chefdk/1.4.3/ubuntu/14.04/chefdk_1.4.3-1_amd64.deb`
* Install chefdk, e.g. like this `sudo dpkg -i chefdk_1.4.3-1_amd64.deb`
* Clone your forked repo
* cd to ./workstation
* Execute `sudo chef-client -z -c config/solo.rb -j config/node.json`

## TODO

* Extract attributes from recepies
* Fix cookbook syntax with foodcritic

## GOTCHAS

* Doesn't work with recent Chef DK versions due to dependency `chruby_install` cookbook incompatibility. If you get a message like `ERROR: undefined method platform for #<Chef::Node::Attribute ...` try use Chef DK 1.4.3 version

