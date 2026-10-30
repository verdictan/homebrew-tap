cask "kalkidan" do
  version "0.1.0-build.1793381531.2cec2e049779"
  sha256 "812e94c317f830a679b0968c5d4afc3e7d35c4f4fa42755995f7267d944d12f9"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
