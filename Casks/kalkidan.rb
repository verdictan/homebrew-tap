cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792701857.09e2bbdd01b1"
  sha256 arm: "71eb06c38bae3c35bdf52eb1ea6a37f9cfa46effd1a69a2cb25ba000e17120f6",
         intel: "284a844c77030389d99d2a617571bec1ad38549fe490b4a8a9ba1d5bfd0a69c1"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
