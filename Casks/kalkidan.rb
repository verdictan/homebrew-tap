cask "kalkidan" do
  version "0.1.0-build.1793445766.0e7cf7cb0b62"
  sha256 "22a004eb3512e8110682d1adaaaa0a13e29376cc4449e70cc618777a12fb1429"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
