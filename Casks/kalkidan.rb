cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792710174.0e0dc649821c"
  sha256 arm: "f156c9bee5a638e02e5b71e3e0043160083a6f66edfd4d1bd8a0bae777785bb2",
         intel: "b1fcee4bf28114f9acbf907aea235b0a83e0c480fad60c53b1cb531c9e29c007"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
