cask "kalkidan" do
  version "0.1.0-build.1793201206.cf0e33a237c8"
  sha256 "b6eca21ff8d79eae47585daef717a70ed33a6cb1b05cbaa3f6acef9c36dade2c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
