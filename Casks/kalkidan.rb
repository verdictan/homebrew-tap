cask "kalkidan" do
  version "0.1.0-build.1793259746.faa2ce4e042b"
  sha256 "d2ce2a18744626c70692041ec62e78308d07ee55b814f75e0ba1160ac95ac05d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
