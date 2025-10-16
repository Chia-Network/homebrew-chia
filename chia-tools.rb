class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.0.2/chia-tools-darwin-amd64.zip"
      sha256 "d7682c2b43c6ceab4d4c7fa2bb8627a6da43d36edf1cc672d577ae775084e4eb"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.0.2/chia-tools-darwin-arm64.zip"
      sha256 "93223a84190046c3e5b1a43bfb7da9ea245d6fb534a5621b57e2e9fb177872be"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
