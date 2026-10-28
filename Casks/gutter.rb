cask "gutter" do
  version "0.2.0"
  sha256 "4855c73dbfcad3dfa7032a03631345c2079e09ddcccca845a4bbddca9bba3646"

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
