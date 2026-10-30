cask "kalkidan" do
  version "0.1.0-build.1793373406.2efda6a61941"
  sha256 "3e1504464e1bf12194b3e96cdeb97b4212560d0100c5407aa9750b908747d865"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
