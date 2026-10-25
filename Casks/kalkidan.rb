cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792926043.7d58c74f6c19"
  sha256 arm: "41c1cd0e9998625c62f3c3078e100050717fd03982edcfedaf19284c73d09bbb", intel: "feb5018b9742abfd93df8bbd09a13b456ed9b83747082dbc115cbfeda939eeae"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
