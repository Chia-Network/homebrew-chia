class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.1/chia-tools-darwin-amd64.zip"
      sha256 "967ef4d94babf8562d3b9126f617438c3e00e26f7f0f70489ee14411996b3b95"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.1/chia-tools-darwin-arm64.zip"
      sha256 "e9f0060fa2b0d36120d8283c6aa66be8d6a5f555700ee80d30ee3a9add5f6251"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
