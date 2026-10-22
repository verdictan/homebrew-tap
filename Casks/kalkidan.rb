cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792711522.bfb7868aabc1"
  sha256 arm: "01d7d09e616a904e3290743fa82e35dda1f7606cc6a783e366cd40195d8177a4",
         intel: "917ca883c00059971605eb5467476706ca25af5de9dbe67d3d9a1ee2d268fc80"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
