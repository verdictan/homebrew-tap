cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792683243.f4103dcbed9e"
  sha256 arm: "ca01f337803671290254d7244d32a471e89d3b7aa0507ce5fc0cd3c5260e1d93",
         intel: "84d5c921350a105863b796fac359a00e9ad29eb4673d76c6560e16b14121a6ee"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
