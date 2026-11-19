cask "kalkidan" do
  version "0.2.54"
  sha256 "467cb200f273ad25a70d6177679f219c693b0bd60429fabab7b0a735e1bb51c8"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
