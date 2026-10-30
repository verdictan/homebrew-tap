cask "kalkidan" do
  version "0.1.0-build.1793401505.c95445665e80"
  sha256 "1dadcd78bbd7c7e44deaf4e8d7c3b079250fcad9b6c9187ab0481448717b1bca"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
