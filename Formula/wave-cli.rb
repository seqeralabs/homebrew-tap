# Generated with JReleaser 1.10.0 at 2024-01-28T21:30:48.720510857Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.2.0/wave-1.2.0-linux-x86_64", :using => :nounzip
    sha256 "6a913acfb816df1c1b6c01361d0bf7092df8de2767893c5f83c950b5d18ac071"

    def install
      bin.install "wave-1.2.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.2.0/wave-1.2.0-macos-arm64", :using => :nounzip
    sha256 "5ad63ccd47706471df25f65e2da2fa32b7ce588d40681b3a61087b11e154ba89"

    def install
      bin.install "wave-1.2.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.2.0/wave-1.2.0-macos-x86_64", :using => :nounzip
    sha256 "03905dc76d441b5c4c884498a7e0a6f01b7e5ce0c939debffe0c04c6a622e4b4"

    def install
      bin.install "wave-1.2.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.2.0", output
  end
end
