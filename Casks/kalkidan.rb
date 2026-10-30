cask "kalkidan" do
  version "0.1.0-build.1793371635.035c8ba3fd8a"
  sha256 "2468f4a2ef0ba1a0e44b02dacaadb5e73e1c6d363f294129bb0177b8adbe1327"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
