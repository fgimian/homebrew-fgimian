cask 'voxengo-voxformer-vst-vst3' do
  version '2.11'
  sha256 'e846cda09079fe99e679227536a75873f754df276cf37a579de99eafc09798d7'

  url "http://www.voxengo.com/files/VoxengoVoxformer_#{version.gsub('.', '')}_Mac_VST_VST3_setup.dmg"
  name 'Voxengo Voxformer (VST & VST3)'
  homepage 'http://www.voxengo.com/product/voxformer/'

  artifact 'Voxformer.vst', target: '/Library/Audio/Plug-Ins/VST/Voxformer.vst'
  artifact 'Voxformer.vst3', target: '/Library/Audio/Plug-Ins/VST3/Voxformer.vst3'

  zap delete: [
                '~/Library/Preferences/Voxengo/Audio Plug-Ins/Voxformer'
              ]
end
