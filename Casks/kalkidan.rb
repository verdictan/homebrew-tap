cask "kalkidan" do
  version "0.2.18"
  sha256 "7c10a456cf1bb5fd0742531387ebbbc593caae8354a0036548fe05398f4a2276"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
