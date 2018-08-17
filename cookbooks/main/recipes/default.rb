[
  'main::git',
  'main::packages',
  'main::screen',
  'main::ruby',
  'main::disable_screen_lock',
  'main::yandex_disk',
#  'main::virtualbox',
  'main::docker',
  'main::docker_compose',
  'main::wscat',
  'main::google_chrome'
#  'main::skype',
#  'main::ssh',
#  'main::terminal',
#  'main::usability',
#  'main::vim',
#  'main::optimization'
]
.each do |name|
  include_recipe name
end

