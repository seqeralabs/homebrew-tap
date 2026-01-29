# Generated with JReleaser 1.22.0 at 2026-01-29T14:06:32.650333289Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.21.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.21.0/tw-linux-x86_64", :using => :nounzip
    sha256 "d3c597360faa0e731284e3f27c7860a9807dfe46e0480ca08ac005546152ebd0"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.21.0/tw-osx-arm64", :using => :nounzip
    sha256 "7a69d5932e536619e6219ef8e3651d53b80df57a049af01a8fb54ae072877945"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.21.0/tw-osx-x86_64", :using => :nounzip
    sha256 "5fb679d8535886f4975653bc072ac98b7551f83552e835e37c0c64b4055ab7f8"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.21.0", output
  end
end
