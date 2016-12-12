require 'open-uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR',  '')

cask 'xfer-records-serumfx-update' do
  version '1.11b3'
  sha256 'd1ccdcc9bc90ce99d7ab0bfdfa3c9e411a31052c3cdcaf82f57342014fde39a3'

  url URI::encode(
    'file://' + File.join(
      base_dir,
      'Plug-ins (Instrument)',
      'Xfer Records',
      "Xfer Records Serum v#{version} (Update)",
      "Install_Xfer_SerumFX_Update_#{version.gsub('.', '')}.dmg"
    )
  )
  name 'Xfer Records SerumFX (Update)'
  homepage 'https://www.xferrecords.com/products/serum'

  pkg 'Install_Xfer_SerumFX.pkg'
end
