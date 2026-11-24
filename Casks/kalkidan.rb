cask "kalkidan" do
  version "0.2.70"
  sha256 "f31562b44aedd35af9cc3a658e851a40e7a7d8428c38f31e086b49eadad50311"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
