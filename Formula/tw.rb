# Generated with JReleaser 1.24.0 at 2026-06-22T10:02:01.821154191Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.34.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.34.0/tw-linux-x86_64", :using => :nounzip
    sha256 "c5d6bd2dfe9a1b7aaa203866996c2d1ee7b1bc0edaa502448a708989d2ef0773"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.34.0/tw-osx-arm64", :using => :nounzip
    sha256 "59dbccaa3575d12cf69d0a97c5dae28e4943810a65c5ce305a62835939678aeb"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.34.0/tw-osx-x86_64", :using => :nounzip
    sha256 "d6daee7b77d167bdc7440f140363b89f5fd71132df96c5bf27b3441e874b6081"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.34.0", output
  end
end
