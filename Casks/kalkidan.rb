cask "kalkidan" do
  version "0.2.66"
  sha256 "74a46b974c880031e99963c2917fc4c960760cf64defd188fdaf28c7d0a23e90"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
