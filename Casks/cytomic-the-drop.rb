require 'open-uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', '')

cask 'cytomic-the-drop' do
  version '1.5.2'
  sha256 '5086b5663aae7798f75acc6e21136f763c92083939b3fdee1f1a361a39f3ccb1'

  # :base_dir was verified as official when first introduced to the cask
  url URI.encode("file://#{base_dir}/Cytomic/TheDrop_v#{version}_Mac.dmg")
  name 'The Drop'
  homepage 'https://cytomic.com/#plugins'

  pkg 'Install The Drop.pkg'

  uninstall pkgutil: 'com.cytomic.pkg.TheDrop.*'

  zap delete: [
                '~/Library/Application Support/Cytomic/The Drop',
                '~/Library/Caches/The Drop',
              ]
end
