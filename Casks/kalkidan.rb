cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792591811.64bf9b7b29d1"
  sha256 arm: "ec9425da0016ff6dc0c108161a55ab9c6453846cf638b700aeeb0913ac8b918d",
         intel: "e3ea10da5641577631c59def78b06da6f2d7ccaf7b8971d6292d8df34cf2ede3"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
