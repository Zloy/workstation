apt_repository 'yandex-disk' do
  uri 'http://repo.yandex.ru/yandex-disk/deb/'
  arch 'amd64'
  distribution nil
  components ['stable', 'main']
  key 'http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG'
end

apt_package 'yandex-disk'

