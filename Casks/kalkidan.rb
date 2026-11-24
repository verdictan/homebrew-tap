cask "kalkidan" do
  version "0.2.74"
  sha256 "3bdf8664216ea0ce1d3c01e0b5930594eac37e386d627ab76994a1dfdc0c3ee7"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
