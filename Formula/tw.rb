# Generated with JReleaser 1.21.0 at 2025-12-04T11:51:58.989715555Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.17.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.17.0/tw-linux-x86_64", :using => :nounzip
    sha256 "3fe8ebb92a6071b10ee31dbd18bc69f3c1904e8cce812b2f9c21acd8e13a4e15"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.17.0/tw-osx-arm64", :using => :nounzip
    sha256 "a789493d53c37816c23c008ac221cc0a8e8bda75de290b7d8217bc0701b4f196"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.17.0/tw-osx-x86_64", :using => :nounzip
    sha256 "6af949dbc5a2efb4a1b62938a496ab99c9a6eaaecc564487018d27fe874cf2d5"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.17.0", output
  end
end
