class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.11.0/chia-tools-darwin-amd64.zip"
      sha256 "2971f13fb19aedf8a56838bfe9937ed703078bb12f4f52cd1f9e15eeb20d4b30"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.11.0/chia-tools-darwin-arm64.zip"
      sha256 "ad3fbd6cf819c02f27119f97122e38f3446c55854cbbd13b7075b76071cc61b8"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
