class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.10/chia-tools-darwin-amd64.zip"
      sha256 "b5c705c11db23f91517fcee23eccfec610f7d1fc83156e78268886c3ca738669"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.10/chia-tools-darwin-arm64.zip"
      sha256 "600d21ed784a4b67f3e5975639984fc04b69a41c36ab4088368f46c4a15a7f51"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
