cask "kalkidan" do
  version "0.2.10"
  sha256 "13f6cc54f9f0bc03d8d12320d684e6b83fcc6f46d6aa62c74ef28c8be75a4983"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Kalkidan.app"
end
