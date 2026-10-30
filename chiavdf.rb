class Chiavdf < Formula
  desc "VDF client binaries for hardware and software"
  homepage "https://github.com/Chia-Network/chiavdf"
  version "1.2.2"
  license "Apache-2.0"

  depends_on "gmp"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.2/chiavdf-darwin-amd64.zip"
      sha256 "8c176b0f083384ec4255e19e34ecfed44e0f7ac93c08d70de7ff8bfd73397828"

      def install
        bundle_root = Dir["chiavdf-*-macos-*"].first
        odie "Unable to locate extracted chiavdf bundle root" if bundle_root.nil?
        bin.install Dir["#{bundle_root}/bin/*"]
        (libexec/"chiavdf").install Dir["#{bundle_root}/libexec/chiavdf/*"]
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.2/chiavdf-darwin-arm64.zip"
      sha256 "0cbcd3daebf0706d302bb4992f70248b229ed0e839dd83c8f115736b7a53d86e"

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
