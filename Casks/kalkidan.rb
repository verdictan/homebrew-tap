cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792607207.683e7aaf9adb"
  sha256 arm: "349d5da936ac0a2e8b96eb5cda119d933dca91d758e917c5fc30fc93543dbca8",
         intel: "80cf9ff7b424d2dd8866964c047279ddf0fac239141e5b9026f54e4051e19c46"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
