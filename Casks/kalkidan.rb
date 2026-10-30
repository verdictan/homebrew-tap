cask "kalkidan" do
  version "0.1.0-build.1793401209.356ef9ae3498"
  sha256 "38af33d4088836ff1eb8c2f019dc45d403cef66d5663f51425508d4c1b85a76e"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
