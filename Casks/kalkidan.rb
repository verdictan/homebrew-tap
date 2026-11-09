cask "kalkidan" do
  version "0.2.15"
  sha256 "ec5666d340fde2d1d41082d89cd0d2e1989a4fa11b13b52413dff27537c9bb99"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
