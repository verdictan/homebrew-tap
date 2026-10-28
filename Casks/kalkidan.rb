cask "kalkidan" do
  version "0.1.0-build.1793231001.ead585c5cef8"
  sha256 "6c42807633c6ad47948f89e354f2c8beb3bb17d2263df068578939c3c2a5f612"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
