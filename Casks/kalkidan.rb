cask "kalkidan" do
  version "0.2.50"
  sha256 "166f6efa4b429e40e82192bb4410a25d0f23f9a83c776772a14f9be3663bd49b"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
