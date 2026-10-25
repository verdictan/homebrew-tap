cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792927278.3b74039a8add"
  sha256 arm: "5b88c6234d61f26dca69e2c28a867d692ee97f55b6fe9b3048d0622f55cd42af", intel: "31b75e5c3e9229e160fa071d0999aaec3b43c8997493fced7a2fff8182d46885"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
