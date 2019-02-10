require 'addressable/uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', Dir.pwd)

cask 'softube-saturation-knob' do
  version '2.4.74-20181029-28021-1kyxyc4,281289'
  sha256 '4a47c4e9358124733cf9ca3b9cf4065457dba2177577a8595085c5ea8d0a5e2e'

  # :base_dir was verified as official when first introduced to the cask
  url Addressable::URI.encode("file://#{base_dir}/Softube/Saturation_Knob-#{version.before_comma}.zip")
  name 'Softube Saturation Knob'
  homepage 'https://www.softube.com/index.php?id=satknob'

  pkg "Softube Saturation Knob Installer #{version.major_minor_patch} r#{version.after_comma}.pkg"

  uninstall pkgutil: 'com.softube.pkg.PlugIns_Saturation_Knob.*'

  zap delete: [
                '~/Library/Application Support/Softube/Saturation Knob.txt',
                "/Library/Application Support/Softube/Softube Saturation Knob Uninstaller #{version}.pkg",
              ]
end
