cask "kalkidan" do
  version "0.1.0-build.1793211311.c74706c5f59d"
  sha256 "312d4a9c6060072df3b42919331e71f4cc10042a7531ff24012965d2d50d37c6"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Kalkidan.app"
end
