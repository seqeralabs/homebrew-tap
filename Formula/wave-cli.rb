# Generated with JReleaser 1.26.0 at 2026-10-22T15:38:44.17771302Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave/tree/master/wave-cli"
  version "1.9.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/seqeralabs/wave/releases/download/cli-v1.9.1/wave-1.9.1-linux-arm64", :using => :nounzip
    sha256 "ebd0a106ddf7739388fcb2ecf13839c866e5dd51b5940499fac3bf4186cb1b31"

    def install
      bin.install "wave-1.9.1-linux-arm64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave/releases/download/cli-v1.9.1/wave-1.9.1-linux-x86_64", :using => :nounzip
    sha256 "50afaa3dfddfd0e7a1f95b7b51f39a43bdec5c9279d7f6a226d38a12b5295596"

    def install
      bin.install "wave-1.9.1-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave/releases/download/cli-v1.9.1/wave-1.9.1-macos-arm64", :using => :nounzip
    sha256 "fa78b3398fd14b0705c62e47dfde22e5bfbd16fa6fc2de05bb5a1bd85a0b6ef9"

    def install
      bin.install "wave-1.9.1-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave/releases/download/cli-v1.9.1/wave-1.9.1-macos-x86_64", :using => :nounzip
    sha256 "13a43ac686fdeb87983b09a0442e9b5406e191fc918d2686d08d1b950db56782"

    def install
      bin.install "wave-1.9.1-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.9.1", output
  end
end
