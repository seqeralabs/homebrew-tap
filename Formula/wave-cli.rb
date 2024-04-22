# Generated with JReleaser 1.11.0 at 2024-04-22T18:15:22.411772517Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.3.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.1/wave-1.3.1-linux-x86_64", :using => :nounzip
    sha256 "3e2250cb9670182cc094c94d9553fb8d5ce884510cc401af491bc043c5f89cd2"

    def install
      bin.install "wave-1.3.1-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.1/wave-1.3.1-macos-arm64", :using => :nounzip
    sha256 "86c5001bbba0b368086fcbbd27c3027422266c807d01c8f2dcfc54a3d1ec2faa"

    def install
      bin.install "wave-1.3.1-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.1/wave-1.3.1-macos-x86_64", :using => :nounzip
    sha256 "9ce3bc1a4ed5c92352fe8fdec23b12957196a263f14dc3569d7ae3af8612c1db"

    def install
      bin.install "wave-1.3.1-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.3.1", output
  end
end
