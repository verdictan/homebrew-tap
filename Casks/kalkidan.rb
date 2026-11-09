cask "kalkidan" do
  version "0.2.20"
  sha256 "90ea85d9af546db7596f7f3bcc3bb3ee240832be276e75cc5789ca94347c1a44"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
