cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792832347.99ce16ad3d43"
  sha256 "8e34f0df4c79689bee5e9ed4023c1c5911c9b31a38290c0ad3e33f79887499bb"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
