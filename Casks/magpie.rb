cask "magpie" do
  version "1.0.0"
  sha256 "c7fd0879ec06855a7239e4a51f49a736ab89d4867288f320391cee3df42f9c2f"

  url "https://github.com/jleitaom/magpie/releases/download/v#{version}/Magpie-#{version}.zip"
  name "Magpie"
  desc "Save links, images, videos and notes, and actually come back to them"
  homepage "https://github.com/jleitaom/magpie"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Magpie updates itself with Sparkle.
  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Magpie.app"

  uninstall quit: "com.jleitaom.magpie"

  # Only with --zap: this also deletes your library.
  zap trash: [
    "~/Library/Application Support/Magpie",
    "~/Library/Caches/com.jleitaom.magpie",
    "~/Library/HTTPStorages/com.jleitaom.magpie",
    "~/Library/Preferences/com.jleitaom.magpie.plist",
  ]
end
