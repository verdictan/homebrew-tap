cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792450802.8b583bf9d63d"
  sha256 arm: "cc0726e1e8251f81f1a9e56942f15dbce7747c5116d8c30ca5cd043a7d81618e",
         intel: "d949eddaea2db2695923eb2659291bacf53d05351757b091f28e5719a3e428b8"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
