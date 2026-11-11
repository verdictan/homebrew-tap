cask "kalkidan" do
  version "0.2.29"
  sha256 "8a5048663ac67bda590fcd1ad4b198f4372b2de69da683a572e7097cdd85b7b2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
