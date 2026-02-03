class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.2/chia-tools-darwin-amd64.zip"
      sha256 "4791b10425499632af234b1179d77d9c0e61914377e2fb7a000058ed1719669b"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.2/chia-tools-darwin-arm64.zip"
      sha256 "2d06263078aa110083fc4f79710b95613e6ee791d9ee003d1253c9651e92791d"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
