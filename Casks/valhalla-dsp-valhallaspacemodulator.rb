require 'addressable/uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', Dir.pwd)

cask 'valhalla-dsp-valhallaspacemodulator' do
  version '1.0.7'
  sha256 'e146ba622b15bacc73b1b6d93caa499502cfd471d4324b671aabfbedc7ca6df2'

  # :base_dir was verified as official when first introduced to the cask
  url Addressable::URI.encode("file://#{base_dir}/Valhalla DSP/VSM_OSX_#{version.dots_to_underscores}.zip")
  name 'Valhalla DSP ValhallaSpaceModulator'
  homepage 'http://valhalladsp.com/shop/modulation/valhalla-space-modulator/'

  pkg "ValhallaSpaceModulatorOSX_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.ValhallaDSP.valhallaspacemodulator#{version.no_dots}.*"

  zap delete: [
                '/Library/Application Support/Valhalla DSP, LLC/ValhallaSpaceModulator',
              ]
end
