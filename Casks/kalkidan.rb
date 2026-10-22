cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792674080.82c63c161692"
  sha256 arm: "ce523241ea22579173a64b2a90eb1d436a079c5697317c901b848234622df37d",
         intel: "03c779e0b12c170a0de0cb27252438eaf15e1af8feab962895bc13b6d34e2bad"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
