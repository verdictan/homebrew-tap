cask "kalkidan" do
  version "0.2.43"
  sha256 "f260ecba6963c3ebe9f1d36d8a6eeb06baa6a97d238327fbf44a86d91aa066c4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
