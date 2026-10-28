cask "kalkidan" do
  version "0.1.0-build.1793197837.edd58c1935f4"
  sha256 "41fab234e9ff94ab17e628dfe1c218ad2814741910f537b0f5c6e7167f546ba6"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
