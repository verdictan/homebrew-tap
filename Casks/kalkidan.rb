cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792800502.ba6fcbd6782e"
  sha256 "1388b5527589b8e79f5e7b790e0f6e005ab7cfe66073c746311b1df05a8ae90f"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
