cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792712059.ab078a7350cf"
  sha256 arm: "9d0be34a7061a053a940e94134b5cf7fce741e52b1cd7e7044d909da5056bb56",
         intel: "96df4bbe4a53a074879dc4077637da38e65be0dd4f4a0b402e538eafe9e6d03c"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
