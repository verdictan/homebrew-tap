cask "kalkidan" do
  version "0.2.14"
  sha256 "ee70266a3296dad0949eaffd11d9dd649edcfb44cdc9d919888b16e0099adcaf"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
