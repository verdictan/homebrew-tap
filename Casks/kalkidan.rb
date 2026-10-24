cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792804392.248356f1ee1a"
  sha256 "9e38a3d4851d334378ba3e0592c108dbea1e4b4b8b2dcda460fabce8ec896a40"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
