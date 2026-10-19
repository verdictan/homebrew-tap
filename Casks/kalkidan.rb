cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792336421.fa32959a371e"
  sha256 arm: "c189fc59aaace1e77285dd952e7be9c2469b89a1d4b4cc5cdb89b4ae62a1feb7",
         intel: "12b77734a56f4794609032aeb98a0acd0d3c7f93661b2720ec140ba840cd1052"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
