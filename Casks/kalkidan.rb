cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792926144.2714dc3c5cad"
  sha256 arm: "ffbe8f0f383d8424a8cb08702205cc6f479848d24698c71b695e53ce9ee252c8", intel: "26be59a64886939eb0f4c1ddabbe943830f4a87a719db008b7d93a0626f92c10"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
