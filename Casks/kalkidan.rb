cask "kalkidan" do
  version "0.1.0-build.1793211823.27a6aa100760"
  sha256 "72fb644894c86ad84a7c6e615b2094f376d9b4b32a0517ae1bb92b92579d8938"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
