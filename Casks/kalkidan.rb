cask "kalkidan" do
  version "0.2.17"
  sha256 "8d1b777315b0a124bbe4e2419a6cce12a7ebed62eef968e6041d5caa2294ef73"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
