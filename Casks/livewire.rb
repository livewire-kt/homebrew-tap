cask "livewire" do
  version "1.0.0"
  sha256 "8a324386a2d91bae64ef9693aff293f87c661a92cd5ec07d8b2253ba32c72e1c"

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
