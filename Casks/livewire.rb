cask "livewire" do
  version "1.0.5"
  sha256 "f59d3517dd1cda6f77e676e8ed0bacb97ccdec6918a2d3ddedf4df43aa9fc3dc"

  url "https://github.com/livewire-kt/livewire/releases/download/v#{version}/Livewire-#{version}.dmg"
  name "Livewire"
  desc "Live development bridge that streams app UI to a desktop host"
  homepage "https://github.com/livewire-kt/livewire"

  depends_on macos: :big_sur

  app "Livewire.app"

  zap trash: [
    "~/Library/Application Support/Livewire",
    "~/Library/Caches/com.livewire.host",
    "~/Library/Preferences/com.livewire.host.plist",
  ]
end
