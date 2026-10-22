cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792692656.2e12f584529c"
  sha256 arm: "0bdf3f0bc194266ece5a10ef072444ee1efcb723fd523e34dc8a54733567fce4",
         intel: "a33c83877e716c7a6078585ac864e11960f75e8440cb970f08a17c0afa4073c9"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
