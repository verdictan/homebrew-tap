cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792495001.176ab6aab1c0"
  sha256 arm: "cb6b0a638d4c217b6d2534d23e2d510e1395623f3050c8cc779aa4054bc7776a",
         intel: "ff4dbd1ae2a308fd532aa3836705f20e4fc391f1cc7affe3aaa02c318c691c79"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
