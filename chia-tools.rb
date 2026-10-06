class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "v1.3.12"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/v1.3.12/chia-tools-darwin-amd64.zip"
      sha256 "81a2064c93db8f29af8d7ff72a15fe95779a6f46f9ddd755b340231b9993d22d"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/v1.3.12/chia-tools-darwin-arm64.zip"
      sha256 "b0cfa831c673f28c9eaa4f42a320c7a92a2f39dee2dd9354f0a5389459d5fc85"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
