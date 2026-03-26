class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.7/chia-tools-darwin-amd64.zip"
      sha256 "31ddac6609b57c3c59d977bf3543a839deb40268041d8b77629ecc4571f39bba"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.7/chia-tools-darwin-arm64.zip"
      sha256 "f493bd5ee4cbfedf88aeeaeb6b11d9806c855af6fda16ea7545c63e292958b8b"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
