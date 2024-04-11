# Generated with JReleaser 1.11.0 at 2024-04-11T14:51:12.410791628Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.0/wave-1.3.0-linux-x86_64", :using => :nounzip
    sha256 "dfd1698604ecfe19007663b158e3ce9efd9f2c4cb8f98f26e5c2fab2db228d9d"

    def install
      bin.install "wave-1.3.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.0/wave-1.3.0-macos-arm64", :using => :nounzip
    sha256 "50980d746fade98a9a0c5d7985dc60d28ff67ca90578ccf088f7bfb2a9392f5a"

    def install
      bin.install "wave-1.3.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.0/wave-1.3.0-macos-x86_64", :using => :nounzip
    sha256 "06fd4cc4c86c23c0493645fcd050c0a7582cfab0313de36f035320dbbd1e949c"

    def install
      bin.install "wave-1.3.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.3.0", output
  end
end
