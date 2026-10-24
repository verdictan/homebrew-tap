cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792829786.d0f2fe108ea5"
  sha256 "cadaae6ce31ce2ecd917a77ca9768302a5c83f8a0ee0ad3c83128699f1dcf304"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
