class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.1.2/chia-tools-darwin-amd64.zip"
      sha256 "591924e1b8d5b5cac789e19acc564a33318c3663e369169416293567739cc426"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.1.2/chia-tools-darwin-arm64.zip"
      sha256 "ccd9d1c2e6aff70d6fcf4fad33b4abff9f45e1212e6ed1bd80a5686a33666800"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
