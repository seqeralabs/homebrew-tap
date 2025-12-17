# Generated with JReleaser 1.21.0 at 2025-12-17T14:14:43.085519583Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.18.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.18.0/tw-linux-x86_64", :using => :nounzip
    sha256 "ef19b160a3f194150d864630707f8e002c07ac903f1140426690e4be8f48e37b"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.18.0/tw-osx-arm64", :using => :nounzip
    sha256 "9b4acc74b48f7f4116febe40e74320f1e9d8adc24eba65b6d8ae082acae1200f"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.18.0/tw-osx-x86_64", :using => :nounzip
    sha256 "0da29aa601c087195d83bc9c9196b97c5654a4f10d3fb71ee8c1a6c60be00d21"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.18.0", output
  end
end
