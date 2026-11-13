cask "kalkidan" do
  version "0.2.30"
  sha256 "11a777eea905f5bb44d67e0771f163f623497197fa8687f801f3f0c41013fab5"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
