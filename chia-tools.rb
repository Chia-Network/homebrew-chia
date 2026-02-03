class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.3/chia-tools-darwin-amd64.zip"
      sha256 "29762e7c2b654e46e4f30bee15d865f531fbbf1bf838392e7dbad4dae41fed7d"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.3/chia-tools-darwin-arm64.zip"
      sha256 "fc327eb5ba1b2cc3194aabf6170dc569150134347cdc28e728d88840b7ac0746"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
