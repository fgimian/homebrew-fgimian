base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR', Dir.pwd)

cask 'voxengo-glisseq-vst-vst3' do
  version '3.9'
  sha256 '7f8b337058a826047783efa9da82978954b8a05b02d4d58a857119d09cda8ff4'

  # :base_dir was verified as official when first introduced to the cask
  url URI.encode("file://#{base_dir}/Voxengo/VoxengoGlissEQ_#{version.no_dots}_Mac_VST_VST3_setup.dmg")
  name 'Voxengo GlissEQ (VST & VST3)'
  homepage 'http://www.voxengo.com/product/glisseq/'

  artifact 'GlissEQ.vst', target: '/Library/Audio/Plug-Ins/VST/GlissEQ.vst'
  artifact 'GlissEQ.vst3', target: '/Library/Audio/Plug-Ins/VST3/GlissEQ.vst3'

  zap delete: [
                '~/Library/Preferences/Voxengo/Audio Plug-Ins/GlissEQ',
              ]
end
