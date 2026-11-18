cask "kalkidan" do
  version "0.2.52"
  sha256 "db8f451caeb5f388cf4144e1a12dbcd876ad7b421cbc0cfd1a962f82420e1ea2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
