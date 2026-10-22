cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792709013.24701f94f8b7"
  sha256 arm: "e339a37983f18a3dd8e1dc525cd462982c83ee16bde3e82b905a56ecd1f479ef",
         intel: "0987fa5f20ce9101e48107566cb2c5cbe63aa335cec0d4c6ff9ae73ce3019050"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
