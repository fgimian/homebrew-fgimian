require 'addressable/uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', Dir.pwd)

cask 'native-instruments-rc-48' do
  version '1.3.1'
  sha256 'c88593c968d432541ee5cc3ced354645b8395efe9cdea1412bccc1a969248308'

  # :base_dir was verified as official when first introduced to the cask
  url Addressable::URI.encode("file://#{base_dir}/Native Instruments/RC_48.iso")
  name 'Native Instruments RC 48'
  homepage 'https://www.native-instruments.com/en/products/komplete/effects/rc-48/'

  pkg "RC 48 #{version} Installer Mac.pkg"

  uninstall pkgutil: 'com.native-instruments.RC48.*'

  zap delete: [
                '~/Library/Application Support/Native Instruments/RC 48',
                '~/Library/Preferences/com.native-instruments.RC48.plist',
                '/Library/Application Support/Native Instruments/RC 48',
                '/Library/Preferences/com.native-instruments.RC48.plist',
              ]
end
