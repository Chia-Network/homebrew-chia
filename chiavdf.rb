class Chiavdf < Formula
  desc "VDF client binaries for hardware and software"
  homepage "https://github.com/Chia-Network/chiavdf"
  version "1.2.0"
  license "Apache-2.0"

  depends_on "gmp"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.0/chiavdf-darwin-amd64.zip"
      sha256 "e7b10ce3a7bfbedd0d52e0cae9f1e14c148e66e0b5156ee89773061d93b61a3d"

      def install
        bundle_root = Dir["chiavdf-*-macos-*"].first
        odie "Unable to locate extracted chiavdf bundle root" if bundle_root.nil?
        bin.install Dir["#{bundle_root}/bin/*"]
        (libexec/"chiavdf").install Dir["#{bundle_root}/libexec/chiavdf/*"]
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.0/chiavdf-darwin-arm64.zip"
      sha256 "91282ce19e985172a89b963842378897ec11f173e181c35fe831f39df130e035"

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
