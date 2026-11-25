cask "kalkidan" do
  version "0.2.81"
  sha256 "b1400b9f24f53dbb4d0c0145a77e65a077ed0643904c342ed9a378e0f8a1ae9d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
