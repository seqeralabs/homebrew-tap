# Generated with JReleaser 1.22.0 at 2026-02-23T10:07:44.770340904Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.22.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.22.0/tw-linux-x86_64", :using => :nounzip
    sha256 "31ba49fb16d74aa94456e6f5fd1c33d54ac5895c74a6d7b33b9dc05e31939749"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.22.0/tw-osx-arm64", :using => :nounzip
    sha256 "0e9553ea4d5ce2d4da074bd6ca85f9d68100b813f348de18a6d40cad940e073a"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.22.0/tw-osx-x86_64", :using => :nounzip
    sha256 "2f9515f9b26b4446cb698c690706dd9799b5c703b8148c1ce10ce1c073ab2832"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.22.0", output
  end
end
