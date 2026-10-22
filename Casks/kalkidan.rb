cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792671966.6e11a3a4423a"
  sha256 arm: "e47f8b7e02c65f3897182eb26733aa24453c093f6911f6a5dfdfc47225dcf437",
         intel: "c49ae1ceebb458429146de51576fee935f7a73c70c03d6e5d05b30a2f1fc3b98"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
