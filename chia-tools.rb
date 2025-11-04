class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.1.0/chia-tools-darwin-amd64.zip"
      sha256 "9e108259755fad6c94ce09f380ca1f302ef812ccdafbe978c20f974fb077721f"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.1.0/chia-tools-darwin-arm64.zip"
      sha256 "e5f8d8b2497f1f38b21bf5b7d6f58c6731ec52bba37fa207937af70b41b962a5"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
