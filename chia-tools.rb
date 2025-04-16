class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.5/chia-tools-darwin-amd64.zip"
      sha256 "362c173688b5d5c7fa978775e89d78505f6f953a4b0d7ecf33cee65fed506b2b"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.5/chia-tools-darwin-arm64.zip"
      sha256 "6fe481ffb8315466263430596c9227e43c2e261db8a12c5e05fdba4feca4a1f0"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
