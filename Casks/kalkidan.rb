cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792499729.0d751286e13f"
  sha256 arm: "129630bab19c006743d1cdedf994d59f0735e7f7b725d284f85b69b8a63f1d52",
         intel: "fbe07ef1803c5edaeefe07b727a39e51b4ff98338c61c1e5cd19c135114bfef4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
