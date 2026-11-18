cask "kalkidan" do
  version "0.2.49"
  sha256 "35484e12469ad34a4588b0dc4dc1d4a0f930b87bbecf24b1c206cd02d95ce4d0"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
