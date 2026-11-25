cask "kalkidan" do
  version "0.2.79"
  sha256 "e4c041ccb816eb00d0a8d1456430d530a6eaeef67b0cea1f54d689bbd1995771"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
