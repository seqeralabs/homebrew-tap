# Generated with JReleaser 1.21.0 at 2025-12-10T14:53:42.980847556Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.8.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.0/wave-1.8.0-linux-arm64", :using => :nounzip
    sha256 "533623f73f8a6e28b8cf8736b64d7be9dfa24a85319ce76e8f1419bf45efdf6b"

    def install
      bin.install "wave-1.8.0-linux-arm64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.0/wave-1.8.0-linux-x86_64", :using => :nounzip
    sha256 "cf27407ed6ecbbee0a4a5eeff6283b7a50683629d39f909907ec9bb3c25fb045"

    def install
      bin.install "wave-1.8.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.0/wave-1.8.0-macos-arm64", :using => :nounzip
    sha256 "056e765e8ad33389f5a79b3593c739d062d06d4f875d4ec63e4b82c37637b158"

    def install
      bin.install "wave-1.8.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.0/wave-1.8.0-macos-x86_64", :using => :nounzip
    sha256 "73694e010a929236ad7b1c30408346753b94c348b68c2047c53a11390bf6f260"

    def install
      bin.install "wave-1.8.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.8.0", output
  end
end
