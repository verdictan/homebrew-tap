cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792930575.c8238ab156e9"
  sha256 arm: "728fd227f6f392c7046e5ce76c6c5177edcc8c2cef346350e51cd3e39c888c47", intel: "e2e2d0132ca51094b0b6f720b4e65eb5e1ce3b3126b3e56cb7fad01b8d1c186c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
