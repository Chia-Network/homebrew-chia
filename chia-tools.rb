class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "1.3.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.9/chia-tools-darwin-amd64.zip"
      sha256 "44b5d3ef3e041bdee1c551228721e8ace5b7df50a18303d268cced6f3c0e1995"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/1.3.9/chia-tools-darwin-arm64.zip"
      sha256 "a7e8f45e05f5595461dc9435da463c2bfed18f237c65b4647b4827ffb8adb5c6"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
