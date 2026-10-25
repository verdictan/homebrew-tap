cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792889224.873362590a6e"
  sha256 arm: "b844d3f2003b88ff62e15e2ba74a456cbab51eb311eb141d8632515809b4dc62", intel: "4f58a3fad9a76dcb466094782e915238e5604752b08ace407ebddcddad3c46a7"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
