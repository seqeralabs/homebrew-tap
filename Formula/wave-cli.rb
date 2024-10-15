# Generated with JReleaser 1.14.0 at 2024-10-15T08:45:25.320330782Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0-linux-x86_64", :using => :nounzip
    sha256 "49b6070f48020e7742a2f27541d65f62262a256412e9bb2eab47b130fea49702"

    def install
      bin.install "wave-1.5.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0-macos-arm64", :using => :nounzip
    sha256 "035350488cf3a597eda55e12991290011afb0e5234c7782f2137c701ea987ad7"

    def install
      bin.install "wave-1.5.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0-macos-x86_64", :using => :nounzip
    sha256 "96c0feb0a140cd62d37fc15f722f84f161a02ce242f30bbcd3383600131d617e"

    def install
      bin.install "wave-1.5.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0", output
  end
end
