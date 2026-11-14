cask "kalkidan" do
  version "0.2.33"
  sha256 "54f784fcc103eb14e6560a1d2d00aacc39348a71651d5434a7776f91ca7348e2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
