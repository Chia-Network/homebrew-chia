class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.0.0/chia-tools-darwin-amd64.zip"
      sha256 "3c6391f78449458a6c726f0ffc442b2ee633f462c6299b10d4b15b121fc264cc"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.0.0/chia-tools-darwin-arm64.zip"
      sha256 "3f40eed3e8ed60e0e9880cc25611d545f66e418e5743e8fab050cbeba81cabe0"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
