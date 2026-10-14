cask "xyne-spaces" do
  version "1.0.66"
  sha256 "7ba0d03199f592295574457f5d05c84292f9e6e8db913a081c0b9ff84fb07876"

  url "https://github.com/juspay/xyne-spaces/releases/download/v#{version}/Xyne.Spaces-#{version}-mac-arm64.dmg"
  name "Xyne Spaces"
  desc "Collaboration platform for humans and AI"
  homepage "https://github.com/juspay/xyne-spaces"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Xyne Spaces.app"

  zap trash: [
    "~/Library/Application Support/xyne-spaces-electron",
    "~/Library/Logs/Xyne Spaces",
    "~/Library/Preferences/com.xyne.spaces.plist",
    "~/Library/Saved Application State/com.xyne.spaces.savedState",
  ]
end
