cask "kalkidan" do
  version "0.2.55"
  sha256 "5514519294d81ee9a64cfa54bd96d079c3e376c3ae4f8cc6935afcd1ae903e53"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
