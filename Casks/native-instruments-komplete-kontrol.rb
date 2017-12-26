require 'open-uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', '')

cask 'native-instruments-komplete-kontrol' do
  version '1.9.3'
  sha256 '1e7f343e8f278d5cfe3fb63da0886d5d06dbe3494555fc53640a0707e67bdfa0'

  # :base_dir was verified as official when first introduced to the cask
  url URI.encode("file://#{base_dir}/Native Instruments/Komplete_Kontrol.iso")
  name 'Komplete Kontrol'
  homepage 'https://www.native-instruments.com/en/products/komplete/keyboards/komplete-kontrol-s-series/'

  pkg "Komplete Kontrol #{version} Installer Mac.pkg"

  uninstall pkgutil: 'com.native-instruments.KompleteKontrol.*'

  zap delete: [
                '~/Library/Application Support/Native Instruments/Komplete Kontrol',
                '~/Library/Preferences/com.native-instruments.KompleteKontrol.plist',
                '/Library/Application Support/Native Instruments/Komplete Kontrol',
                '/Library/Preferences/com.native-instruments.KompleteKontrol.plist',
              ]
end
