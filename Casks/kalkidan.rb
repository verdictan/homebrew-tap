cask "kalkidan" do
  version "0.1.0-build.1793232577.5ab104d70c1b"
  sha256 "b9c945621a63e40f1386c706ce7a54f6a1886d8447308de1a0d81a46c7efc7a4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
