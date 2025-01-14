# Generated with JReleaser 1.16.0 at 2025-01-14T15:34:49.655047223Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.1/wave-1.5.1-linux-x86_64", :using => :nounzip
    sha256 "02c2e9554f99e4f997bda90ec1a0e0e08e8ede51bf81f6ce14a93c5e29fe6002"

    def install
      bin.install "wave-1.5.1-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.1/wave-1.5.1-macos-arm64", :using => :nounzip
    sha256 "195f9bb399d0f24ef307b4f7e3d86cf42ad9d9b684cad94b21c833f0961d2594"

    def install
      bin.install "wave-1.5.1-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.1/wave-1.5.1-macos-x86_64", :using => :nounzip
    sha256 "64e56f9cf7ebd49c82bddccea5a8d899f62d207405baf144dd05c804501eac8a"

    def install
      bin.install "wave-1.5.1-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.1", output
  end
end
