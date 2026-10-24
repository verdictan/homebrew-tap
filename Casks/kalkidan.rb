cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792850538.be0a4d5b9aa3"
  sha256 "1b4c7e013bc584a43a148495d45890205fa5f08c71e1a3ff199032f211b2f99b"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
