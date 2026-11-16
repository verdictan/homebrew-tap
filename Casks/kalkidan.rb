cask "kalkidan" do
  version "0.2.45"
  sha256 "a2d508913dd18e74d2d7396053c7e4f1879527cd4b45a64a5487237cdb86a3b6"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
