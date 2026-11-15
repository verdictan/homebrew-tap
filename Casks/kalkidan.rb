cask "kalkidan" do
  version "0.2.36"
  sha256 "c4dedfaf72e36641c7480326d802207051baa1ed30b9b9e49172dbdb4e024798"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
