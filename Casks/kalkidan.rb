cask "kalkidan" do
  version "0.2.7"
  arch arm: "arm64", intel: "x64"
  sha256 arm: "da43fea0548a5241781a8fa253e1f8c7fc46ebde6ff84178ddcfbcf1ec6bada0", intel: "9078efafde88592b3cf0b40b2f96801e61cde87ab00c7c11148578b411001dbf"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
