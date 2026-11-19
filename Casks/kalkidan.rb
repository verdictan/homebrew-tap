cask "kalkidan" do
  version "0.2.56"
  sha256 "9dd89b1c0334f95fb57a2ba56f7e251f1958505062410d65a73c2ea1152e7ae4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
