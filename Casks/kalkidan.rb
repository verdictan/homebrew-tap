cask "kalkidan" do
  version "0.2.21"
  sha256 "995750acccbf64b3542e02025794c203deb6ff23f645e554f33ecd9cffdd44bf"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
