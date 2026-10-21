cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792591096.21335033849e"
  sha256 arm: "16601a069519d800b37ce77e85553543116f6e64f552a7270579f80c63577cec",
         intel: "1a2ea9789b9660fcd3a06f2c81cdbd98709704de2b2cf862996840a5e9d47510"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
