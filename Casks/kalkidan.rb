cask "kalkidan" do
  version "0.2.72"
  sha256 "218ba2c0424f85ae0e5c81036aae115e0817fdafb9a51eedbd5f24435ff63ac4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
