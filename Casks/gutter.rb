cask "gutter" do
  version "0.3.1"
  sha256 "6f5daa67553e0f6bb4bf25dae1729ad8cf507549af4e9d3d93ed6409bddb5e8d"

  url "https://github.com/jleitaom/gutter/releases/download/v#{version}/Gutter-#{version}.zip"
  name "Gutter"
  desc "Fit new windows beside the Stage Manager strip"
  homepage "https://github.com/jleitaom/gutter"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Gutter updates itself with Sparkle.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Gutter.app"

  uninstall quit: "io.github.jleitaom.gutter"

  zap trash: [
    "~/Library/Caches/io.github.jleitaom.gutter",
    "~/Library/HTTPStorages/io.github.jleitaom.gutter",
    "~/Library/Preferences/io.github.jleitaom.gutter.plist",
  ]
end
