class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.4/chia-tools-darwin-amd64.zip"
      sha256 "a75d51905d925afe9cefa6996ac49ef2dccdfe2e6c3818ce9b5afe8d2fcad909"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.4/chia-tools-darwin-arm64.zip"
      sha256 "88d640dc7cd11aef07dc1196b024110b76c0d0b0a66235d99e253f7df64daeba"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
