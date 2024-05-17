# Generated with JReleaser 1.12.0 at 2024-05-17T11:52:56.483521267Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.4.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.0/wave-1.4.0-linux-x86_64", :using => :nounzip
    sha256 "1e09b038b49fcec2bf91b1b393ecab1a5904e3dc34c8af0fc768cb15d1a845f0"

    def install
      bin.install "wave-1.4.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.0/wave-1.4.0-macos-arm64", :using => :nounzip
    sha256 "2516b504ca024724b53bfa24f3544c68029a0da9d448997d63cd735aa17b870c"

    def install
      bin.install "wave-1.4.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.0/wave-1.4.0-macos-x86_64", :using => :nounzip
    sha256 "936f7e83f3b6e7f61bd9915bbafd98ad4ce76221255835f0ec761d2340dafca6"

    def install
      bin.install "wave-1.4.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.4.0", output
  end
end
