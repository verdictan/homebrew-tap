cask "kalkidan" do
  version "0.2.78"
  sha256 "6cfd8fbd9b6122af922f1e2ad43c3e0c956d925f29ab4e76a3d85ec055c3c9f6"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
