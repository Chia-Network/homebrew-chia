class Chiavdf < Formula
  desc "VDF client binaries for hardware and software"
  homepage "https://github.com/Chia-Network/chiavdf"
  version "1.2.2"
  license "Apache-2.0"

  # The release bundle ships Developer ID signed dylibs that use @rpath install names.
  # Homebrew rewrites and ad-hoc re-signs dylibs whose install names it changes, which drops
  # the Team ID that library validation requires for hw_vdf_client. preserve_rpath leaves the
  # @rpath install names, and therefore the signatures, untouched.
  preserve_rpath

  depends_on "gmp"
  depends_on :macos

  on_arm do
    url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.2/chiavdf-darwin-arm64.zip"
    sha256 "0cbcd3daebf0706d302bb4992f70248b229ed0e839dd83c8f115736b7a53d86e"
  end

  on_intel do
    url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.2/chiavdf-darwin-amd64.zip"
    sha256 "8c176b0f083384ec4255e19e34ecfed44e0f7ac93c08d70de7ff8bfd73397828"
  end

  def install
    # Homebrew strips the single top-level directory of the zip, so the bundle is usually the current directory.
    bundle_root = Dir["chiavdf-*-macos-*"].find { |dir| File.directory?(dir) } || "."
    bin.install Dir["#{bundle_root}/bin/*"]
    (libexec/"chiavdf").install Dir["#{bundle_root}/libexec/chiavdf/*"]
    prefix.install_metafiles
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vdf_client --version")
    assert_match version.to_s, shell_output("#{bin}/hw_vdf_client --version")
    assert_match "Usage:", shell_output("#{bin}/vdf_client 2>&1", 1)
    assert_match "Usage:", shell_output("#{bin}/hw_vdf_client --bogus 2>&1", 1)
  end
end
