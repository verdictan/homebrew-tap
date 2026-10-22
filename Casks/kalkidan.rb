cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792705178.f0725a432dcf"
  sha256 arm: "ff7a088d63f635b6aeabcf73cd4d17120e5ae4d3829caa36b18834139eb7638d",
         intel: "4041a3add0649d2c764bedf2772227e46337f1c50b32d7722a5cb392e8a52737"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
