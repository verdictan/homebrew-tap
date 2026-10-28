cask "kalkidan" do
  version "0.1.0-build.1793200627.8689fbd992fb"
  sha256 "a34f55c08e86f4639e2e7779f759d7e687965eaf9db8359fa3aaea825a463c3f"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
