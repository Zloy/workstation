[
  'main::git',
#  'main::optimization',
  'main::packages',
  'main::ruby',
  'main::skype',
#  'main::ssh',
#  'main::terminal',
#  'main::usability',
#  'main::vim'
]
.each do |name|
  include_recipe name 
end

