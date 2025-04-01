class DatabaseManager < Formula
  desc "Manages users and databases in a database cluster based on a yaml config"
  homepage "https://github.com/Chia-Network/database-manager"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/database-manager/releases/download/0.2.0/database-manager-darwin-amd64.zip"
      sha256 "9f4a5c702195052bcc9dbb18fe60919360e0dfd845240e361b69683021993709"

      def install
        bin.install "database-manager"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/database-manager/releases/download/0.2.0/database-manager-darwin-arm64.zip"
      sha256 "553f5f4152ac9f7e0ff2bebf7f33e344a86fbc33467f522670e90fb5ed38ea03"

      def install
        bin.install "database-manager"
        prefix.install_metafiles
      end
    end
  end
end
