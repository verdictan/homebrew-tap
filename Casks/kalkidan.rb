cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792682387.ca9760fb9b9f"
  sha256 arm: "16ea59924537f40d4b4b43052ed6cd232c104731f314c6c0288206024053316c",
         intel: "e868eb541271bd686678658c706c19d4bc299e859b59740b51c215977acc05e5"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
