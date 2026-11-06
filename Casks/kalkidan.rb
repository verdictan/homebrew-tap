cask "kalkidan" do
  version "0.2.9"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "c732ed25b1d6651a29b01bf9616b44953f0c8314ecd85e7f28e9d5e3c61bfb39", intel: "52323bc0498b5a8dfa61faaba851403d5845c398a89f93508bfe15a259f5945e"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
