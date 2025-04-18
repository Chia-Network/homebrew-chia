class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.6/chia-tools-darwin-amd64.zip"
      sha256 "d9b1dbc1c374a7732e0c1e0bd5273ed861d8427a5d352a363f9c1704ca63c280"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.6/chia-tools-darwin-arm64.zip"
      sha256 "9c3c930a9f305a86fd1ee59cd81aa7f511472ce44073844c07a2257fb34e4ddf"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
