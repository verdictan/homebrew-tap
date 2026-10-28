cask "kalkidan" do
  version "0.1.0-build.1793179958.d7427fa4ab35"
  sha256 "148de1e0050c2062ca04e60fee135d6e58c3e8f1abd381fb10b726cbae786db0"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
