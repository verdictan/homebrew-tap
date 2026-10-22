cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792702446.0160a67de054"
  sha256 arm: "cb9f3a4977a689cf0dee742ebdc337b1187425691ca18f9ef24f1ca2bc9609cd",
         intel: "990d9b80bd48b6066c0af5cdadfea86cc207ff6de0a96686733db4122b43d9f3"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
