# Generated with JReleaser 1.14.0 at 2024-10-10T09:58:38.739036151Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0-rc.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.2/wave-1.5.0-rc.2-linux-x86_64", :using => :nounzip
    sha256 "41b26c3c84ef0dcbd66e9584c41d3622682556d3dff4da3fd4011ccc196f2ffd"

    def install
      bin.install "wave-1.5.0-rc.2-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.2/wave-1.5.0-rc.2-macos-arm64", :using => :nounzip
    sha256 "8582ab55fd6861f7f2588102b23cd413e69c59038f5c196efcf9c65ddaef0ff7"

    def install
      bin.install "wave-1.5.0-rc.2-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.2/wave-1.5.0-rc.2-macos-x86_64", :using => :nounzip
    sha256 "ff226b1676ebbd2a4dfa14049ce4da88860d28a0e74f421a61e704cc3b8bb36e"

    def install
      bin.install "wave-1.5.0-rc.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0-rc.2", output
  end
end
