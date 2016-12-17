cask 'goodhertz-canopener-studio' do
  version '2.0.1-r2'
  sha256 'ebb51edb878a6d9fa13f89f0975cd8908b07cf75a48209b3d4683d7b088023ec'

  url "http://downloads.goodhertz.co/installers/release/Goodhertz-Installer-v#{version}.pkg"
  name 'Goodhertz CanOpener Studio'
  homepage 'https://goodhertz.co/canopener-studio'

  pkg "Goodhertz-Installer-v#{version}.pkg"

  uninstall pkgutil: 'com.goodhertz.pkg.ghz2-CanOpenerStudio-CS2X-*'

  zap delete: [
                '~/Music/.GDHZ'
              ]
end
