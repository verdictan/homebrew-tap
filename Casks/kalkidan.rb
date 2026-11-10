cask "kalkidan" do
  version "0.2.27"
  sha256 "186b7c3489045740ec502dcf88fef4fda0c8539f5c32f87996020c8894f26341"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
