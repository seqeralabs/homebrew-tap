# Generated with JReleaser 1.18.0 at 2025-05-24T17:22:24.221129525Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.6.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.6.1/wave-1.6.1-linux-arm64", :using => :nounzip
    sha256 "fcef03956a9c6f22ddc9779102dec92f32a33acc1a7b3d87f1b8e1e9b22446a9"

    def install
      bin.install "wave-1.6.1-linux-arm64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.6.1/wave-1.6.1-linux-x86_64", :using => :nounzip
    sha256 "fc687e29648eb51efe808340a2f0458ce2e8e768bd37e105a63414faae14aea6"

    def install
      bin.install "wave-1.6.1-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.6.1/wave-1.6.1-macos-arm64", :using => :nounzip
    sha256 "654daccc07fc80e41e21d0e430e2869a7fd3503c79bbf2815a1a80be02daa35f"

    def install
      bin.install "wave-1.6.1-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.6.1/wave-1.6.1-macos-x86_64", :using => :nounzip
    sha256 "31a1e9699e56361ecdde724fc1dae16b2330beaa2dc50f3b4e547d3ca6b28d45"

    def install
      bin.install "wave-1.6.1-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.6.1", output
  end
end
