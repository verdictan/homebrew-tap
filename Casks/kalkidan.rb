cask "kalkidan" do
  version "0.1.0-build.1793363248.feb878e866ce"
  sha256 "1e7cc13bb539cb450c75e956ee546a4209394e72e04917c12f5ede12a670a0b4"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
