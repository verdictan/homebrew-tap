cask "kalkidan" do
  version "0.2.39"
  sha256 "fd206af5ba8a56218ec294288072820b6bb5c783e875626154c6c1dfbb6fa11d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
