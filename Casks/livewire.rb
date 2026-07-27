cask "livewire" do
  version "1.0.3"
  sha256 "3c155d3f112f79aabbc47f8ee94af26eb45e17037a7dde9388edc7fd27b71216"

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
