cask "kalkidan" do
  version "0.1.0-build.1793231592.8b424c318343"
  sha256 "f8a69fbf03bc552c7d2381e24076b4cd44b3f11d78275acf7925633230b56ab3"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
