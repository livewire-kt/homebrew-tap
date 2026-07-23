cask "livewire" do
  version "1.0.2"
  sha256 "3acc79744cfec34dcaef4916d41a464e010db157d3aea9216c77319326223dfc"

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
