cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792928648.2e332a49bcd6"
  sha256 arm: "cca275bfaccce3d301e3dd453ad16c3e7cf8e63ef620af60080c72504daefc9b", intel: "9212a80aa7631b8bd13cb3bb2d898dd9cda1a2a9322910a42a5dbdb6fdb78b48"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
