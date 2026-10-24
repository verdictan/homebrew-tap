cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792864381.5b0ec4b134d0"
  sha256 "87485f318b08072453e1f3d8ee7b08db48bb933bb0d11a2f29e7103e78acaee1"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
