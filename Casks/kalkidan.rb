cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792659461.1e82144a8674"
  sha256 arm: "a5d50f729aec82965fd77869cf1a1eeb3e1ba39c71f05b4724d8e60a155e7152",
         intel: "5803857d8919e9d27e2f773a6226a69ec4cd6afc32d9b577be93f85543795b18"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
