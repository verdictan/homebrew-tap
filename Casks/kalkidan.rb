cask "kalkidan" do
  version "0.1.0-build.1793200061.20b1f2006089"
  sha256 "dd481f46a40e9d208e7dd7cccd71b9ccda305dd33ba55821781b80a5ae2cf7f4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
