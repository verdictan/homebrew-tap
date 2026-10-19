cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792386606.d40afb8c4eaf"
  sha256 arm: "05e8534fa975b7b77a85c4079f88cd23d7b5fa2e61d6018bebf2c87a3bd79c3e",
         intel: "5da105b925ff8bf912ac2b60bb7aedaf9c1f7a9beca0d464ee86ee1fec6b4d2c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
