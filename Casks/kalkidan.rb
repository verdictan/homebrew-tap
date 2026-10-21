cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792583214.ebadc3bc342f"
  sha256 arm: "459eb638990bcd87ca333d6c41c2f49966b512554b1aa27318233224a8e29cee",
         intel: "6205222904a60e41ec09be929e4a0b56fbba0eb11882ffe643eb4dd33f664653"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
