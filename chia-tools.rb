class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.8/chia-tools-darwin-amd64.zip"
      sha256 "cd1d124625b377c6063e8732ca07b2a8000bdb4099934e5b92396b888f6da0e9"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.8/chia-tools-darwin-arm64.zip"
      sha256 "1d677197804a8514455a03d198c00e6bd85f345eb99b0f380690eb65577e26c8"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
