cask "kalkidan" do
  version "0.1.0-build.1793366136.f71770243f90"
  sha256 "98e77c08774c1bc3ff816be8f5123fff686466fa6276bc4797869042d4aade9e"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
