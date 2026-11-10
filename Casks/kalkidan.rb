cask "kalkidan" do
  version "0.2.25"
  sha256 "fd94b4402c42c3337f8d7c18920233bca934215b9bf3c4d720eaa3322f21236b"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
