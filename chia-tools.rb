class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.7/chia-tools-darwin-amd64.zip"
      sha256 "c11e77ad209b8204b256ad9de6300cf48f5337155475c1b082e57bde04f28867"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.7/chia-tools-darwin-arm64.zip"
      sha256 "aab6fc8513f65e87162eeeccfa8fd959a2e0e0e51d70305e23644ad72cfe1236"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
