cask "kalkidan" do
  version "0.1.0-build.1793198367.f7364fc4985e"
  sha256 "df629fce0eac4c060d7e8aa117c23f1db110042a4d1b3fa1d716f91c3d3af3a8"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
