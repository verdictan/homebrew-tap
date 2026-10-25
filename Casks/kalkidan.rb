cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792931380.06803d584ea6"
  sha256 arm: "6a33398012219cd5aa7e192c86099f30fbf6301f3e277c640811a4e7028bb401", intel: "23610190c6e6f4d0ef75e85a302a3d9491300c7582c49447cc14c775f5a10e43"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
