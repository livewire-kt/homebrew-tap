cask "livewire" do
  version "1.0.6"
  sha256 "c2d3ca3f76d844972ed4fddf5c21582666e89c117d50e3ad95ffa4668637abfd"

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
