cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792801459.30033acfeb00"
  sha256 "a2ccacc84adbb96fbcbc1d5f3ade7c616c69e887a6a5273e7b54bce00e14c1ac"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
