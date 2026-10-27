cask "kalkidan" do
  version "0.1.0-build.1793097049.8ba8279800de"
  sha256 "84da63f35c78ae018b6de53fae895399ee052155d2f89a4e25bc5b233a8860f2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
