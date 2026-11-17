cask "kalkidan" do
  version "0.2.48"
  sha256 "147c1b558cd766365b687e5d1ad3ce5ae468d31d90e00f61fee849c9e60fdb0c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
