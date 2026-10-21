cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792606753.967c3d391dbd"
  sha256 arm: "795f5c463e71061b0c2238e5d5215233fc5f6078d191dfb6b2ae012779ee80c6",
         intel: "bc1773ac4db794e68f3ec717aa42b36183f33d1bcb3902401d7e1b64950903c4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
