class Chiavdf < Formula
  desc "VDF client binaries for hardware and software"
  homepage "https://github.com/Chia-Network/chiavdf"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.2/chiavdf-darwin-arm64.zip"
    sha256 "0cbcd3daebf0706d302bb4992f70248b229ed0e839dd83c8f115736b7a53d86e"
  end

  on_intel do
    url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.2/chiavdf-darwin-amd64.zip"
    sha256 "8c176b0f083384ec4255e19e34ecfed44e0f7ac93c08d70de7ff8bfd73397828"
  end

  # Bundled binaries are Developer ID signed (Team JVJ6QQB8PJ) with hardened runtime, so
  # library validation rejects any dylib Homebrew rewrites and ad-hoc re-signs. Every dylib ID
  # and load is @rpath or a system path and the only rpath is @loader_path, so with
  # preserve_rpath Homebrew modifies (and re-signs) nothing. Keep the release bundle that way.
  preserve_rpath

  def install
    prefix.install "bin", "libexec"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vdf_client --version")
    assert_match version.to_s, shell_output("#{bin}/hw_vdf_client --version")
    assert_match "Usage:", shell_output("#{bin}/vdf_client 2>&1", 1)
    assert_match "Usage:", shell_output("#{bin}/hw_vdf_client --bogus 2>&1", 1)
  end
end
