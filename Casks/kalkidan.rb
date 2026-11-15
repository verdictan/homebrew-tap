cask "kalkidan" do
  version "0.2.35"
  sha256 "0e6a1830dd58c8df5cf00fb350f46f254a68f90d63e8b08941c929c1102a020a"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kalkidan.app"
end
