class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.8/chia-tools-darwin-amd64.zip"
      sha256 "b874072fae2222218b6045b1ab12f64516c88c99af0e070507d8fc07670d31ff"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.8/chia-tools-darwin-arm64.zip"
      sha256 "f0a13a88214e755dbe80929c9b98184ec27f524dd5b9e2516b43d7ad2b608b28"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
