cask "kalkidan" do
  version "0.2.32"
  sha256 "92caed2e497ddc6d36634cefc66cf6b242dffcb72b8caa5bcf49c75de5736494"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
