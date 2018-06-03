require 'addressable/uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', Dir.pwd)

cask 'u-he-satin' do
  version '1.3.0,4596'
  sha256 'a5f7e2ebce149cde891b3a39dea316726190517ca01034bcdc938bb2c5016415'

  # :base_dir was verified as official when first introduced to the cask
  url Addressable::URI.encode("file://#{base_dir}/u-he/Satin_#{version.before_comma.no_dots}_#{version.after_comma}_Mac.zip")
  name 'u-he Satin'
  homepage 'https://u-he.com/products/satin/'

  pkg "Satin#{version.after_comma}Mac/Satin #{version.before_comma}.#{version.after_comma} Installer.pkg"

  uninstall pkgutil: 'com.u-he.Satin.*'

  zap delete: [
                '~/Library/Application Support/u-he/com.u-he.Satin.Preferences.txt',
                '~/Library/Application Support/u-he/com.u-he.Satin.midiassign.txt',
                '~/Library/Application Support/u-he/com.u-he.Satin.plist',
                '/Library/Application Support/u-he/Satin',
              ]
end
