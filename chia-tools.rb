class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.3/chia-tools-darwin-amd64.zip"
      sha256 "76c53c4e1f2c1a909129b57b9d710f04dd8d8cc95a6bd71c1c09ed8753ba6578"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.3/chia-tools-darwin-arm64.zip"
      sha256 "5761938493277bffc8be0de92fc1b15f9fab16978c658101474a20385aa81bb1"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
