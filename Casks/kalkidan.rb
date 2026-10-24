cask "kalkidan" do
  depends_on arch: :arm64
  version "0.1.0-build.1792873478.01a58eda3110"
  sha256 "ecf49fb265c418a4d29e3582818452210bd2913c291a74e944ed14a432e1f845"

  url "https://github.com/verdictan/packages/releases/download/kalkidan-v#{version}/Kalkidan-#{version}-mac-arm64.dmg"
  name "Kalkidan"
  desc "Project, repository, and agent session manager"
  homepage "https://github.com/verdictan/kalkidan"

  app "Kalkidan.app"
end
