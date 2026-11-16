cask "kalkidan" do
  version "0.2.42"
  sha256 "2a9ac9da8711897b6ab0588d24472e56642f6796c52945cb6b33aeefb16d0f8c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
