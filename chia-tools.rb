class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.0/chia-tools-darwin-amd64.zip"
      sha256 "4da5a1e9058498dab668fa14f21dbf5a9721cd0944db1497453dba0314b37dc7"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.0/chia-tools-darwin-arm64.zip"
      sha256 "3e619b2926007f7771a5f26847cf1268b6703d4303d96ed2897727f53378a9c3"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
