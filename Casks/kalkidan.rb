cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792386158.a4b9b183a12e"
  sha256 arm: "cd2a1a7259ae17f9fa1be6275a289f46be57cf71c46486810087d78ffae029a9",
         intel: "d9bd64e6194ae785ef29e610b8b57983df25916b9d8e32c8f3ac60ce40003655"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
