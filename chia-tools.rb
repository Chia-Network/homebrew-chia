class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.1/chia-tools-darwin-amd64.zip"
      sha256 "d3c2efd5dff3e9974eebce78a15f2d0674ce9f00a649d09b13bd651f479d02ff"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.1/chia-tools-darwin-arm64.zip"
      sha256 "0c2b481155cad3f1c8c531c3defe4079d0b8860e3f9e4efcad7de4695bffea92"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
