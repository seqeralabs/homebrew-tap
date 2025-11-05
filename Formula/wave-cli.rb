# Generated with JReleaser 1.21.0 at 2025-11-05T08:53:12.046932686Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.7.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.7.0/wave-1.7.0-linux-arm64", :using => :nounzip
    sha256 "d05f3429362a311277a9aaf6d43ed1806b293e18051abbbc67acdeb3c413c10b"

    def install
      bin.install "wave-1.7.0-linux-arm64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.7.0/wave-1.7.0-linux-x86_64", :using => :nounzip
    sha256 "8c579e0084c8cc45931115c452d964e40945a9c944c7f7377edef0612b4e5e98"

    def install
      bin.install "wave-1.7.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.7.0/wave-1.7.0-macos-arm64", :using => :nounzip
    sha256 "5d762e6d003bdc4443d2682b7583048c0286ce1e241ab24fe5d0098d197057c6"

    def install
      bin.install "wave-1.7.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.7.0/wave-1.7.0-macos-x86_64", :using => :nounzip
    sha256 "50be123e7bbd58a7a5d99ceaf9cc5049150f27363d6dada7d5336a7f304cb88d"

    def install
      bin.install "wave-1.7.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.7.0", output
  end
end
