cask "kalkidan" do
  version "0.1.0-build.1793201490.bcd085555984"
  sha256 "51d6fa7002adf0161c1d4ac0dccda977dbefc0f2aa1409328cbfac56167105f2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
