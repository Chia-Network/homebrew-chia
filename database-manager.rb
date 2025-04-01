class DatabaseManager < Formula
  desc "Manages users and databases in a database cluster based on a yaml config"
  homepage "https://github.com/Chia-Network/database-manager"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Chia-Network/database-manager/releases/download/0.2.1/database-manager-darwin-amd64.zip"
      sha256 "90fe0d3c823fb0089735be4bb97c9cc99fda799ac5555c31913fda523b77bd93"

      def install
        bin.install "database-manager"
        prefix.install_metafiles
      end
    end
    on_arm do
      url "https://github.com/Chia-Network/database-manager/releases/download/0.2.1/database-manager-darwin-arm64.zip"
      sha256 "38ccfa4c069a8ed7953390b19bec89abd97245c37a471e592ff736a687eab320"

      def install
        bin.install "database-manager"
        prefix.install_metafiles
      end
    end
  end
end
