class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.13.12"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.13.12/chia-tools-darwin-amd64.zip"
      sha256 "e4b1568ac018beba6fc18aa5809303a8de01564eb347f8b822f8add1258f2b3e"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.13.12/chia-tools-darwin-arm64.zip"
      sha256 "67d356b4ba2479c00ede2e3104e7d937871a0e09fe70e9f370e314d0ff119555"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
