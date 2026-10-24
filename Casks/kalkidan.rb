cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792833277.2c193a51f4ef"
  sha256 "628cde5c366c6bc9ead121bda7111c8f5953f95df23439dfc72bf7061db3345d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
