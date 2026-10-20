cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792457224.bcf074ef35df"
  sha256 arm: "d83cccc2dc1184a1591ea91bc90d3dad14b6676409876011a30354b74afa5462",
         intel: "3f68221050238a0d9c2eafbb3915a3b7570d16999bcab07156617b50f38bd543"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
