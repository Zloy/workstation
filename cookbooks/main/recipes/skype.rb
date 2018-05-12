extend Main::Helper

if has_gui?
  apt_repository 'canonical_partner' do
    uri 'http://archive.canonical.com/ubuntu/'
    components ['trusty', 'partner']
  end

  package 'skype'
end
