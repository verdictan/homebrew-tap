cask "kalkidan" do
  version "0.1.0-build.1793180252.ac81abcb4988"
  sha256 "67abf1bc5453b1c295c9c24b9c52a46ddadf2bca3b31d8a6030c877e34005a4f"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
