cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792608904.17911554468e"
  sha256 arm: "1569f1a502f9b0011c75a5a6c37ebea0592d3f414735e21dc8fcd9c37c494284",
         intel: "898e5c266e9d0a83b5bf5dbc5d67ab942aa14b88a5c572a55968b648e2851a41"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
