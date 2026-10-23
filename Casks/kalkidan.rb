cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792740998.dad1e5712265"
  sha256 arm: "ba46c527722f70abaa7a6dbaa6fdb940221e15a91739ec01d638e7adb657b948",
         intel: "39628fa83af8fe0a58960c1f6ad41d554ad002d1abd8f99158d71dc6e1b07ceb"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
