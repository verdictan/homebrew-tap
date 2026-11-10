cask "kalkidan" do
  version "0.2.26"
  sha256 "ca09c944f2363317b516f9a2ad53cd9a12699d837d23f62994910207c0293bc9"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
