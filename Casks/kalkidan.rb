cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792540587.4a1a9a9696ec"
  sha256 arm: "e30ce0c3ea03bcde5467db5c2984846282b305383567005d19d5ab0f2c0f8deb",
         intel: "458d7d75b0651dda14710660740b21d1ff4dd6b3b3d5007d4f7322d25a9bbdfc"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
