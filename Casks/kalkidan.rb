cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792694465.351ec0a59cd8"
  sha256 arm: "c730c9ab28022fdf711331a855f1a11176c4132aba3ec2b05d4b48ae647b2955",
         intel: "64a433c015b43def0ea203f7dcaf053def4474d04f8488438bc30a649a2dbe02"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
