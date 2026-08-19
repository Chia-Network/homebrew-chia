class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.11"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.11/chia-tools-darwin-amd64.zip"
      sha256 "9eab265f93daa2614b131f59ba24df6b327220e9bb250d704fbbe6df4fe1eb24"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.11/chia-tools-darwin-arm64.zip"
      sha256 "8de99d7f26b119d73414cceedace5fb688052dfaa1fcd4b7be7c7b4dc9e6742f"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
