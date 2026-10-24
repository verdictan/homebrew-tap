cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792856927.fcf8ef2dcf36"
  sha256 "133913fb9e933543486485c34197f768fad1f1b884dd641687eef98bb644f1b3"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
