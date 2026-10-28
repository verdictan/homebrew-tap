cask "kalkidan" do
  version "0.1.0-build.1793176261.0dfc3441b974"
  sha256 "650bd732a931d8a9264161d30c42f02c52a25822111989701fe93d3f24f0723d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
