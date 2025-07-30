class ChiaTools < Formula
  desc "Collection of CLI tools for working with Chia Blockchain"
  homepage "https://github.com/chia-network/chia-tools"
  version "0.12.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.10/chia-tools-darwin-amd64.zip"
      sha256 "c0600302121b6df6c3373b274a34862fb84efce91a9fa0798973f3c6ecae3299"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chia-tools/releases/download/0.12.10/chia-tools-darwin-arm64.zip"
      sha256 "aa2894d4fa9393818b83b696f6a8a1ac0732a6b1cb4866047feb2a50e8ac42db"

      def install
        bin.install "chia-tools"
        prefix.install_metafiles
      end
    end
  end
end
