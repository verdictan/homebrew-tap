cask "kalkidan" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0-build.1792706042.5f38876d3b7d"
  sha256 arm: "19e7a2196facb46b031a203fd02f06600be8d7f26d2816939630190570aab5a6",
         intel: "42b9307257bdfb6755a46f64477bb626fb014b28265f14c3e8379c30eeffbcfd"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-#{arch}.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
