class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.12"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.12/chia-tools-darwin-amd64.zip"
      sha256 "c50adcc77122c0aac78df2cb5de9ab891889782513609c946abf42da78fe1922"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.12/chia-tools-darwin-arm64.zip"
      sha256 "3e39c0c802599597df15cd935b1cfd2929f40ed85bb28e5e0a9aeac2e77dc24a"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
