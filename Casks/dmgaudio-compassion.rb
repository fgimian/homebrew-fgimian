require 'open-uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR',  '')

cask 'dmgaudio-compassion' do
  sha256 '377349fb6f1d5c8bee5ff43f968e7d1a623d528a8069fe34b5fac91d484347ee'
  version '1.16'

  url URI::encode(
    'file://' + File.join(
      base_dir,
      'Plug-ins (Effect)',
      'DMGAudio',
      "DMGAudio Compassion v#{version}",
      "CompassionMac_v#{version}.zip"
    )
  )
  name 'DMGAudio Compassion'
  homepage 'https://dmgaudio.com/products_compassion.php'

  pkg "CompassionMac_v#{version}.pkg"

  uninstall pkgutil: 'com.dmgaudio.pkg.Compassion*'

  zap delete: [
                '~/Library/Application Support/DMGAudio/Compassion',
                '~/Library/Preferences/com.dmgaudio.Compassion.plist',
                '/Library/Application Support/DMGAudio/Compassion'
              ]
end
