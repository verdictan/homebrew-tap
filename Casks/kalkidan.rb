cask "kalkidan" do
  version "0.2.47"
  sha256 "c98dca5e85a7264a91983a85a10c107187d6751f0586b4ab59b016ede21c7409"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
