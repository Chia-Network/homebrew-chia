class Chiavdf < Formula
  desc "VDF client binaries for hardware and software"
  homepage "https://github.com/Chia-Network/chiavdf"
  license "Apache-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.3/chiavdf-darwin-arm64.zip"
    sha256 "095b33466c97392e30efb20d7e09980dba826268c9a64b8b5f98e6c14fcdd1e9"
  else
    url "https://github.com/Chia-Network/chiavdf/releases/download/1.2.3/chiavdf-darwin-amd64.zip"
    sha256 "35e97512d092be577d3b34a8f3f88274f6db98c1ad7ca2685d76b7699eea97f0"
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
