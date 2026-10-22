cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792688973.51ea6f1325ae"
  sha256 arm: "c62c2707e1a2c971a420e4bfe3a10c71b4f7b4472156841e7ebbb7a61eebfcb2",
         intel: "4f1c4e22904f7c0079e59bc0dc8f52e9840b779680b224218de2f44b37d28750"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
