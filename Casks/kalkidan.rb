cask "kalkidan" do
  version "0.2.23"
  sha256 "96d74143c97ac1aad70031ff63aec084f5e96b6a0a5d57c21f31862ce91f0701"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
