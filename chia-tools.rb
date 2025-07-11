class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.9/chia-tools-darwin-amd64.zip"
      sha256 "61963a0586aae92cfea71d4344a99503844786730bbd7dedf23013cdb7f74dea"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.9/chia-tools-darwin-arm64.zip"
      sha256 "82e4add7f3104a493410a2d9fdbbb2a6637f21a5c6d593e2844ff03d51277b48"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
