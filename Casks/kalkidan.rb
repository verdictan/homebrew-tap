cask "kalkidan" do
  version "0.1.0-build.1793243702.6c7665bb401d"
  sha256 "e37bb83be53a539e132c1322aa90ad2a80aa16929f96a8bb828a19719aa7367d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
