cask "kalkidan" do
  version "0.1.0-build.1793210446.11fe7152a901"
  sha256 "13be354b6f393b7a9502ce2e8e1b40ede4ffb921339e22598c05c2c43c01572d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
