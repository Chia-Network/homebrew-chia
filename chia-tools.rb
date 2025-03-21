class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.2/chia-tools-darwin-amd64.zip"
      sha256 "7f73a7cb86daa4a456ba25e4e3bfa4f4df2ff1b2760ae1133798700fb84bd988"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.2/chia-tools-darwin-arm64.zip"
      sha256 "9719a7cf0a0e6d5222dbb6ff011e6a9fae49fa2eac8909c2cd29ec0e9bd297d2"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
