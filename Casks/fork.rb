cask 'fork' do
  version '1.0.67.5'
  sha256 'f02fc78fe635dbd2a8f2e93e6053d58907d6b4a9a25be30f67f0eb3cc2cbb653'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '2a4def5f0763cd4a51f1496e65bc1e511663b843c91823f495c4ca6bb54ec971'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap trash: [
               '~/Library/Application Support/com.DanPristupov.Fork',
               '~/Library/Caches/com.DanPristupov.Fork',
               '~/Library/Preferences/com.DanPristupov.Fork.plist',
               '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
             ]
end
