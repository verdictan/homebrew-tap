cask "kalkidan" do
  version "0.1.0-build.1793199497.2befdf2def69"
  sha256 "3d59754c4bcb0f7fc48677940c227672dcd508ddbf20c3a4f8a51223ea07a3ab"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
