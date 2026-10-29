cask "kalkidan" do
  version "0.1.0-build.1793231880.d890486ae405"
  sha256 "b116d64dddac11e92e01e3102da293633f17ce6d2bfc18f61e09996fca5c2559"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
