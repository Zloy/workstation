[
  'main::git',
#  'main::optimization',
  'main::packages',
  'main::ruby',
#  'main::skype',
  'main::disable_screen_lock',
  'main::yandex_disk',
  'main::virtualbox',
  'main::docker'
#  'main::ssh',
#  'main::terminal',
#  'main::usability',
#  'main::vim'
]
.each do |name|
  include_recipe name 
end

