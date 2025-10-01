class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.0.1/chia-tools-darwin-amd64.zip"
      sha256 "5b6708b929194b88624701b2e5c9a58ea78997edaf3747a28d1497c7139a3c88"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.0.1/chia-tools-darwin-arm64.zip"
      sha256 "d2efd558f95cc6f85105e96d9930675dc6422930fbdfd03f13af6094783e4716"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
