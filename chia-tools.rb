class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.5/chia-tools-darwin-amd64.zip"
      sha256 "17f31f5156656443f394a8fe22fa4890dbac589f6efe9d52c9ea4622c70f09ec"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.5/chia-tools-darwin-arm64.zip"
      sha256 "0f069e7e5222ba5e9b23aef2136cf7df8ee5844fff971e45797bea69b9902038"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
