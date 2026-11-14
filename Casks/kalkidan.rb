cask "kalkidan" do
  version "0.2.34"
  sha256 "ebf81579611e1b9fe5a8d41109c03133515192e6634180b5f13a0ca91c74f7b2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
