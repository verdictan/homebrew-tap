cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792921222.c5cb769cd89c"
  sha256 arm: "252fe634a73c73dcd33a788a788d0c24c53c0f5fe4bfd0b989ec426e6e685ae3", intel: "c671588d1aa916f56fbe316b1cbe46a7cb5f5cdeb2860417c957b712b9486e8c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
