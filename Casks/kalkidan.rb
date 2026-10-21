cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792594770.cace3067c215"
  sha256 arm: "a5ac3c2b9b92d3fc97a8dfe43de91d3f329036c6788916a915eafd7fb609cc19",
         intel: "3bcc358ca965541c820f6c7f5a274491fd14c9c0625d1a39973ee2b17c913cc1"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
