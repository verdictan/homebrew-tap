cask "kalkidan" do
  version "0.1.0-build.1793446463.b5e3a52a4c45"
  sha256 "a0e152a2cc024f09006ba7ff71d29802997ff8a7ac77d625a68e4012570b60da"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
