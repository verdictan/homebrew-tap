cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792714196.f639fd9251b3"
  sha256 arm: "3e717d5947f0e2176921b3582b80d7e7b77a32e68e414d5364aa3ffe58b9932a",
         intel: "774ee5208c7d1d5f7f8aa7915c17c8423437bc9e8ab7b19382868950f437b783"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
