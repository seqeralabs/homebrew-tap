# Generated with JReleaser 1.14.0 at 2024-10-12T14:29:20.714409898Z

class WaveCliAT14 < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.4.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.1/wave-1.4.1-linux-x86_64", using: :nounzip
    sha256 "194ce74c11201c5c3347f7f242c830a2c8105b2d5b83297ebadcc544b2dacb32"

    def install
      bin.install "wave-1.4.1-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.1/wave-1.4.1-macos-arm64", using: :nounzip
    sha256 "497e48adf7c9fe625bf9d6e869db4a0f9f34bbdc4b94da738c432bb266374413"

    def install
      bin.install "wave-1.4.1-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.1/wave-1.4.1-macos-x86_64", using: :nounzip
    sha256 "b4e1b7f791fe33ff5d63a5e43917197eaa3b530a7a10b15e5d701d3b896cff61"

    def install
      bin.install "wave-1.4.1-macos-x86_64" => "wave"
    end
  end

  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.4.1", output
  end
end
