# Generated with JReleaser 1.25.0 at 2026-08-27T14:18:05.204651963Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.40.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.40.0/tw-linux-x86_64", :using => :nounzip
    sha256 "e8dabcd185972b2bd46acfdc17a8629746a6f54fa3eae680d1780bf3c4f57cc2"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.40.0/tw-osx-arm64", :using => :nounzip
    sha256 "0a64eab3b7abd01c4b3b05955de17b47db9a8cac8bf33f69aac36da6d1e02b15"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.40.0/tw-osx-x86_64", :using => :nounzip
    sha256 "de5aebd23a5b44bba62d7282f7fb01112119c0985504115b66e9065cc25feecc"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.40.0", output
  end
end
