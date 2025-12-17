# Generated with JReleaser 1.21.0 at 2025-12-17T19:23:11.211392064Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.8.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.1/wave-1.8.1-linux-arm64", :using => :nounzip
    sha256 "6aa85a164277aaa1943d65cc9b90d992ce32ba98a37f39ff25867dc251f11352"

    def install
      bin.install "wave-1.8.1-linux-arm64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.1/wave-1.8.1-linux-x86_64", :using => :nounzip
    sha256 "a31d5929f2b57ed0d92629e5393289c813fe4c418075a05b8c9980ec9750216a"

    def install
      bin.install "wave-1.8.1-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.1/wave-1.8.1-macos-arm64", :using => :nounzip
    sha256 "b970cbb98907b4e929e3cc2f1ad971a27b555ed2c295ddc9c68792eb2a9a190d"

    def install
      bin.install "wave-1.8.1-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.1/wave-1.8.1-macos-x86_64", :using => :nounzip
    sha256 "11d8e6442b4e3f42e52b0a3b4c10e02f15904339407d909eda6d2d8f1bc41d1e"

    def install
      bin.install "wave-1.8.1-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.8.1", output
  end
end
