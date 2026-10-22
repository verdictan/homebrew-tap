cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792696539.45f96a4ee956"
  sha256 arm: "529b2aafd00440b2e6242d2acb4e66c40c26a608b35f8744de420dc246556c5d",
         intel: "f2389e3e33a8102a0595b3d23fd114a3ad7051a9d3574d442c005b5e79f373ec"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
