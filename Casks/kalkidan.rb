cask "kalkidan" do
  version "0.1.0-build.1793173811.754d45015338"
  sha256 "03b92fbabe9c880780fd6a2f848adcb71ae1f03249d3543b5da0f9a8117c5b3a"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
