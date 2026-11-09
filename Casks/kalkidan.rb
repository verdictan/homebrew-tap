cask "kalkidan" do
  version "0.2.19"
  sha256 "8c35387b34a682f68a22ac1bafb09047212b42444a2b9a07a84228c602fca615"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
