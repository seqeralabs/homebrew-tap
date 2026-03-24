# Generated with JReleaser 1.23.0 at 2026-03-24T20:45:04.49404164Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.8.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.2/wave-1.8.2-linux-arm64", :using => :nounzip
    sha256 "9c80c2dbde197d50d9738078b2f0455f7f1b00d8fa825e0a4b339e47a7db7c90"

    def install
      bin.install "wave-1.8.2-linux-arm64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.2/wave-1.8.2-linux-x86_64", :using => :nounzip
    sha256 "d610ecd5bae3bcdcec08660a28e463dec00616819fc2eba561277bf8a2f34e7d"

    def install
      bin.install "wave-1.8.2-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.2/wave-1.8.2-macos-arm64", :using => :nounzip
    sha256 "104f919a197cd36e8258898c87f1122dbba82ae3047583dc2f433b0ea5647c7f"

    def install
      bin.install "wave-1.8.2-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.2/wave-1.8.2-macos-x86_64", :using => :nounzip
    sha256 "01ac3af2f20bc485c948bcbad8a20476b3ad624e5e757a76da5b298bbd473e62"

    def install
      bin.install "wave-1.8.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.8.2", output
  end
end
