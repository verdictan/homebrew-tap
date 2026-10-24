cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792831721.c641f6f062de"
  sha256 "4085aa6aa7409f19746aca3999d5ab1f92dcc8191f3d94be98b7655b151555f8"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
