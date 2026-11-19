cask "kalkidan" do
  version "0.2.57"
  sha256 "9d9c7b5a66be4c1802b441915161eccd3b9ff20213d8d23eb697c2b24460a3ad"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
