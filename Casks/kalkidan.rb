cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792684226.985ebbe446a2"
  sha256 arm: "6272e76447b354884fd789775d1500e462fd941866b4de2f0d0b51b9a25744ba",
         intel: "616ec0b3bfe524b47cd828d03074fdedba90a31e1a3a3bfe65b9b11fdc17f719"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
