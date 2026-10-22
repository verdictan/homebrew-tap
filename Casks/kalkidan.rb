cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792690704.006140785c08"
  sha256 arm: "a761d88cdc2a66493fa1ecc388e0b9155a6a8e3fa3d2d6117ff6cd32b8eed952",
         intel: "aaa6620c39960718618ad1dfc0393d90937eef8187ca99430cabb19759e0612f"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
