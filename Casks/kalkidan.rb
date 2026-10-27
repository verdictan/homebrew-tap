cask "kalkidan" do
  version "0.1.0-build.1793104511.baccd29af4ef"
  sha256 "0bd7711103ad27529f10b9b41f08a84bd09fb027a969224fb1b61332286c9622"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
