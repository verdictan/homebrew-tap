cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792689174.dad7c0683be6"
  sha256 arm: "089ebb81f3619667f925d26eab7178ba03cc5a1b41f01496e4e4018e1d87b084",
         intel: "fa7c36b52166162e38801fdbdfb6481f9fcd4c0cd4d80c20de76782b96877b4c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
