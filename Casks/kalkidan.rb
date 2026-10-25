cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792929521.28bf6d6f00fb"
  sha256 arm: "39a319f9357c10c907b8607ed9bc7144a4ee8e35f28062b09db6467078ca4742", intel: "a1fb283559fd1a66a9da4452a011b06ab3bc926e810121ba26066942860365ba"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
