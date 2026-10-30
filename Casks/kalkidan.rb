cask "kalkidan" do
  version "0.1.0-build.1793368841.d1a475432a39"
  sha256 "54e5907efda11f7c0167857c79a545301984f3ce549c7140890d9fd698b9767c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
