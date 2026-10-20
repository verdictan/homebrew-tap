cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792495221.908b4f978a77"
  sha256 arm: "9914f814e164d222d0f91e5d31e4bf2d77ba29b53b77b46edf838004d219b092",
         intel: "e06691061ce89bb0b41d727b72e310e096a60813cd6966c10be0a7d4386f6fbf"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
