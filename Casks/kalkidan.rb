cask "kalkidan" do
  version "0.2.76"
  sha256 "64ec5565bb87fa7fa7aeb4a8a568d53f650045430eaa60ba182c1a04ebdfce98"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
