cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792451585.6997d2788ba7"
  sha256 arm: "2e12894e7fa52df35f39700e45b4fd9d12c175f046369f691bae5a15ec6d9d13",
         intel: "ff1627e31e5e79d74b4e81efcfcb3e7fe234c875255cff9b6a23d463fd3bc0a5"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
