cask "kalkidan" do
  version "0.1.0-build.1793095442.2031083f3003"
  sha256 "aef56ae33b446210d8828f129ae45b35450e1651651b9a3c0d2c5c27634f5e31"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
