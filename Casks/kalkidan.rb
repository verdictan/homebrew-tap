cask "kalkidan" do
  version "0.1.0-build.1793198934.969fa86b51bf"
  sha256 "70a88de92b2a5795ab780eb37793b2a50b069b0b5b07ec382e29006328ee409d"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
