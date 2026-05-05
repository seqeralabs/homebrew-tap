# Generated with JReleaser 1.24.0 at 2026-05-05T13:11:36.027055227Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.29.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.29.0/tw-linux-x86_64", :using => :nounzip
    sha256 "f0b6af1994176fde44b7a6d1470ed1a859e1a8eed9e31a192846d171444d1fa0"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.29.0/tw-osx-arm64", :using => :nounzip
    sha256 "912a2316fc12398e9be428deceb0c0bbdfa9e823666e4b42b830e6a4f0bb0cfc"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.29.0/tw-osx-x86_64", :using => :nounzip
    sha256 "ec87bd735e33a8498bb6e4e68c2fd325b5cb20be1de232a683b10a8b48db1b9e"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.29.0", output
  end
end
