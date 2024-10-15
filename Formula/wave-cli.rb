# Generated with JReleaser 1.14.0 at 2024-10-06T20:29:15.623090801Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0-rc.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.1/wave-1.5.0-rc.1-linux-x86_64", :using => :nounzip
    sha256 "f24c97f8684da48962d7dccf02934e5ed8e522ffba6e935c423029e747620133"

    def install
      bin.install "wave-1.5.0-rc.1-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.1/wave-1.5.0-rc.1-macos-arm64", :using => :nounzip
    sha256 "43b52077f2147c2719fa2c58585038c2153df6f90521089933028f726d2b1235"

    def install
      bin.install "wave-1.5.0-rc.1-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.1/wave-1.5.0-rc.1-macos-x86_64", :using => :nounzip
    sha256 "5c811b42cae24984f163d22cedc84127266157834ffe72d94509a8a6a74e5fd0"

    def install
      bin.install "wave-1.5.0-rc.1-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0-rc.1", output
  end
end
