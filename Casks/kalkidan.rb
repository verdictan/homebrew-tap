cask "kalkidan" do
  version "0.1.0-build.1793354830.f876dfd3ce00"
  sha256 "0afbd4cbf7ecdc4f41f16e5dc23c7c2df5d21d06b1eabc462731fe4474eb910c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
