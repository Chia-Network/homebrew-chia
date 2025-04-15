class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.4/chia-tools-darwin-amd64.zip"
      sha256 "febd31c6dd9229962cbeca198b267de4e8c671375c048a9bd3887e3e4cafddab"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.4/chia-tools-darwin-arm64.zip"
      sha256 "201a74208293da0e9c9aaa8555fda5dcffebb24279005a967ac18c8265136141"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
