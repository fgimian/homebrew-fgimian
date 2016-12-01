require 'open-uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR',  '')

cask 'u-he-hive' do
  version '1.1'
  sha256 '57e2a2285f391154b40b10b92f428873ce45c941d48940d5adb671276fdbecd3'

  url URI::encode(
    'file://' + File.join(
      base_dir,
      'Plug-ins (Instrument)',
      'u-he',
      "u-he Hive v#{version}",
      "Hive_#{version.gsub('.', '_')}_Mac.zip"
    )
  )
  name 'u-he Hive'
  homepage 'https://www.u-he.com/cms/hive'

  pkg 'Hive3898Mac/Hive 1.1.0.3898 Installer.pkg'

  uninstall pkgutil: 'com.u-he.Hive.*'

  zap delete: [
                '~/Library/Application Support/u-he/Hive',
                '~/Library/Application Support/u-he/com.u-he.Hive.*',
                '/Library/Application Support/u-he/Hive'
              ]
end
