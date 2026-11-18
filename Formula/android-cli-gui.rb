class AndroidCliGui < Formula
  desc "Unofficial GUI for the official Android CLI"
  homepage "https://github.com/RayhanHamada/android-cli-gui"
  version "0.1.2"
  depends_on macos: :sequoia

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RayhanHamada/android-cli-gui/releases/download/v0.1.2/android-cli-gui-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "5616bc2300687715bcf9fb582a999d53b8c2bf7b41ff0c8b01a08399813d30b7"
    else
      url "https://github.com/RayhanHamada/android-cli-gui/releases/download/v0.1.2/android-cli-gui-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "24a745f9da01bfe6bfc177d6d9496afa0b9112d80004296def8ecda11c2fc401"
    end
  end

  def install
    bin.install "android-cli-gui"
  end

  test do
    assert_path_exists bin/"android-cli-gui"
  end
end
