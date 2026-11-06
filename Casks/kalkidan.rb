cask "kalkidan" do
  version "0.2.6"
  sha256 "92c5bca8ae1c51b0d7c20db14bda9d02484b4636448c9fcca62f7bdcf09e59e6"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
