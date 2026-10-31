cask "kalkidan" do
  version "0.1.0-build.1793444880.3e866dadb305"
  sha256 "627fcc560adc89f308d18b582d69f26129b9cb2397fe803d16cbc600240f11b9"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
