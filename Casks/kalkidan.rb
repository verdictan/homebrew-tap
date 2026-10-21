cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792579594.986063a5cb1b"
  sha256 arm: "406363b81a320229e638d43c5c2f37c2f5e25cac9f51236324b95ebceb0cd21a",
         intel: "863e203161aa8c5a6170aa3be1e29b8e0becfb111c7e403044914059fe76c0e2"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
