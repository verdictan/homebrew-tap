cask "kalkidan" do
  version "0.1.0-build.1793244279.79b1e5ed5157"
  sha256 "45f3c7ffcda34f690ef0c1fb2d1211cb2de3d45019a513a70247d26813a34fa5"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
