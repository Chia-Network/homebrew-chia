class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.6/chia-tools-darwin-amd64.zip"
      sha256 "d6d13950e37bc82a82d7d19c3b67f2456efca8c51b0c640f8d967d063a53af84"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.6/chia-tools-darwin-arm64.zip"
      sha256 "64a53c32b1b1ab9f4ad9216969fe9dbddcc83f76ea4996f8ab08cd11b3c97142"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
