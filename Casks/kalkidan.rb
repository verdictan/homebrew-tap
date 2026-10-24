cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792881348.1608d34ac994"
  sha256 arm: "336eb94505b6af6e034337effdaf90698764341b5cc88c117f98388736163cab", intel: "3f7c684a6e15168320dd7c46713e56027f9aef5e89cc5af495c339d0f0465772"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
