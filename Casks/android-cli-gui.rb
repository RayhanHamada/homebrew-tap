cask "android-cli-gui" do
  arch arm: "macos-arm64", intel: "macos-x86_64"

  version "0.1.3"
  sha256 arm:   "0a4ca97c059d2025f5aa387d61382f90476040bfb498ac48f428903554819fda",
         intel: "741b88fc480239bd4ad93dd908a1fce824f738baef4449038b6ebfebe0ab72da"

  url "https://github.com/RayhanHamada/android-cli-gui/releases/download/v#{version}/android-cli-gui-v#{version}-#{arch}.zip"
  name "Android CLI GUI"
  desc "Unofficial GUI for the official Android CLI"
  homepage "https://github.com/RayhanHamada/android-cli-gui"

  depends_on cask: "android-cli"
  depends_on macos: :sequoia

  app "Android CLI GUI.app"

  uninstall quit: "io.github.rayhanhamada.android-cli-gui"

  zap trash: [
    "~/Library/Application Support/io.github.rayhanhamada.android-cli-gui",
    "~/Library/Caches/io.github.rayhanhamada.android-cli-gui",
    "~/Library/Saved Application State/io.github.rayhanhamada.android-cli-gui.savedState",
  ]

  caveats "If macOS blocks the first launch, open System Settings > Privacy & Security and choose Open Anyway."
end
