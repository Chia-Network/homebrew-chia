class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.2.0/chia-tools-darwin-amd64.zip"
      sha256 "0022204c02891e2ae30e452ef5f76e29f536256a0275c53cbec0614d57646ce5"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.2.0/chia-tools-darwin-arm64.zip"
      sha256 "3965d6da0fddbdeb53da64b837b1350ab27e62e748d621806fcfe4219c9d1a2f"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
