cask "kalkidan" do
  version "0.2.40"
  sha256 "880a24d727df2bef8a45fee1b836cd4b2d10845ee36061f177462e0ec65bdf66"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
