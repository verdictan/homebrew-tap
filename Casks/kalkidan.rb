cask "kalkidan" do
  version "0.2.77"
  sha256 "95de02194e4929f681c8324b90f6dfe320fc2ebbb5de8f950f96cfdacfb603c3"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
