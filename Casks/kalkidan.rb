cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792857901.f98686292841"
  sha256 "2d8d83c66919f482866e343223ebd023e157147c5cdc8ab0119a2768973b69ba"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
