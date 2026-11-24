cask "kalkidan" do
  version "0.2.71"
  sha256 "b0525b74319169972a35f473cbe4ec0cf28bee13bcceb07fb93e6af66c2b98a6"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
