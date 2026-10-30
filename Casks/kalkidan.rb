cask "kalkidan" do
  version "0.1.0-build.1793370815.294a870e5f8a"
  sha256 "050acf7ac8bca3b93afa218d75048be066d8c8df0769ab5880e61213753ea313"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
