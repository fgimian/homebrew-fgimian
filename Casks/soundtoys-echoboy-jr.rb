require 'addressable/uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', Dir.pwd)

cask 'soundtoys-echoboy-jr' do
  version '5.2.4.13665'
  sha256 'a68de0e2c34984df40428133a17032c70690d5fc2d996d718aa66aed85ebd23d'

  # :base_dir was verified as official when first introduced to the cask
  url Addressable::URI.encode("file://#{base_dir}/Soundtoys/EchoBoyJr5_#{version}.dmg")
  name 'Soundtoys EchoBoy Jr.'
  homepage 'https://www.soundtoys.com/product/echoboy-jr/'

  pkg 'Install EchoBoy Jr..pkg'

  uninstall pkgutil: 'com.soundtoys.com.soundtoys.EchoBoyJr5'

  zap delete: [
                '~/Library/Preferences/com.soundtoys.metrics.plist',
                '~/Library/Preferences/com.soundtoys.notifications.plist',
                '~/Library/Preferences/com.soundtoys.plist',
              ]
end
