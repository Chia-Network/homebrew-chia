class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.1.1/chia-tools-darwin-amd64.zip"
      sha256 "e884e26bfcc5a09dcb28160a16a84ba2153778196f2a6d7b897ffdd81fd89929"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.1.1/chia-tools-darwin-arm64.zip"
      sha256 "2a12703bc6fa5d8f1b0cc7309c61cd57247c6031728a06186aed048d9c00f1d2"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
