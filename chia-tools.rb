class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.0/chia-tools-darwin-amd64.zip"
      sha256 "4f6cbba7df18e22736e095d950dd66ccf3977decd814e6657f8f85ca4ff5f998"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.0/chia-tools-darwin-arm64.zip"
      sha256 "76e75602f744d38c1af95c9a15e0457e6b1809fe44970a1247179fb59d40940f"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
