cask "kalkidan" do
  version "0.2.73"
  sha256 "3e6d0fc67c7f323e75845627ef02a75a4e4b619875e05cab7cdac86918e6e8f2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
