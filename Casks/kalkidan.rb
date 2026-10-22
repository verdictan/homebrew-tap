cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792673328.4548dbb96594"
  sha256 arm: "4e26c70119e7899f95e61399a616d1081789bf6fe8ec69c80bd6a6f34fe81839",
         intel: "60100d4b3ead776c52e0e37da5ff36e21dff2e3ad441e74a9975ae8f06bdcf5f"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
