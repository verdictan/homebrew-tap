cask "kalkidan" do
  version "0.1.0-build.1793197334.4b2520114b13"
  sha256 "af2153fffa51f673d2a9a9ae6322d9ebe3387388acbd193786a56187737c2254"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
