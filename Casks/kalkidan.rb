cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792715684.dcc451755fe4"
  sha256 arm: "84b8940c094f80e4807eec1588c6b096fd091704c0ed59ef7457225433e857aa",
         intel: "f98c2a62363ef6d97d7dcc3a8dcc13eef80e1162abd73a2f5b2f24e9e2ebd8c5"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
