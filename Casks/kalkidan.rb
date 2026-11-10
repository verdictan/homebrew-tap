cask "kalkidan" do
  version "0.2.24"
  sha256 "baf7e606532de23eefe02aaf9716ab2c683ce2c92461bef4a07cf9d7a02fd6cb"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
