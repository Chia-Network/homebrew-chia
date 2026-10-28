class Chiavdf < Formula
  desc "VDF client binaries for hardware and software"
  homepage "https://github.com/Chia-Network/chiavdf"
  version "1.2.1"
  license "Apache-2.0"

  depends_on "gmp"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.1/chiavdf-darwin-amd64.zip"
      sha256 "29ee1c46f7df75b3fb75421e3672f809d01f7be0e95be8b27a1135757ee83526"

      def install
        bundle_root = Dir["chiavdf-*-macos-*"].first
        odie "Unable to locate extracted chiavdf bundle root" if bundle_root.nil?
        bin.install Dir["#{bundle_root}/bin/*"]
        (libexec/"chiavdf").install Dir["#{bundle_root}/libexec/chiavdf/*"]
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.1/chiavdf-darwin-arm64.zip"
      sha256 "6314ef91a626a817938fd58d3cf317dee39bf35c9c2f53cb37dd0cb2d3b4a2a3"

      def install
        bundle_root = Dir["chiavdf-*-macos-*"].first
        odie "Unable to locate extracted chiavdf bundle root" if bundle_root.nil?
        bin.install Dir["#{bundle_root}/bin/*"]
        (libexec/"chiavdf").install Dir["#{bundle_root}/libexec/chiavdf/*"]
        prefix.install_metafiles
      end
    end
  end
end
