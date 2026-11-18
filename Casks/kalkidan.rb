cask "kalkidan" do
  version "0.2.51"
  sha256 "3bdf6a383097676f233aa1620e12fd2a8e64ecb43445b082843a31c83ef85668"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
