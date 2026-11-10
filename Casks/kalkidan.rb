cask "kalkidan" do
  version "0.2.22"
  sha256 "1f05569d4532ab9c3fd6c0018e1359127ab4fdd84306bb191db8dac5876dc7fc"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
