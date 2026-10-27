class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.13"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.13/chia-tools-darwin-amd64.zip"
      sha256 "f28e4354a0eb5aa2745f2687cda81255eaf4b17383f5f3a01bd6e62dd60ba4ad"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.13/chia-tools-darwin-arm64.zip"
      sha256 "234d7477bc9c71ed572182baf9d02801eed6a1add42a3764b4647f7f0a5d3d33"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
