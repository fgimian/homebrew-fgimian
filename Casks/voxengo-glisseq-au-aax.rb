require 'open-uri'

base_dir = ENV.fetch('HOMEBREW_CASK_MUSIC_SOFTWARE_BASEDIR',  '')

cask 'voxengo-glisseq-au-aax' do
  version '3.9'
  sha256 'f10211ec86e11fab8862abaa1c11260dce77cabfe9876a470b89cff2a1b5d85f'

  url URI::encode(
    'file://' + File.join(
      base_dir,
      'Plug-ins (Effect)',
      'Voxengo',
      "Voxengo GlissEQ v#{version}",
      "VoxengoGlissEQ_#{version.gsub('.', '')}_Mac_AU_AAX_setup.dmg"
    )
  )
  name 'Voxengo GlissEQ (AU & AAX)'
  homepage 'http://www.voxengo.com/product/glisseq/'

  artifact 'GlissEQ.component', target: '/Library/Audio/Plug-Ins/Components/GlissEQ.component'
  artifact 'ProTools AAX/GlissEQ.aaxplugin', target: '/Library/Application Support/Avid/Audio/Plug-Ins/GlissEQ.aaxplugin'

  zap delete: [
                '~/Library/Preferences/Voxengo/Audio Plug-Ins/GlissEQ'
              ]
end
