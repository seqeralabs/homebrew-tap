# Generated with JReleaser 1.14.0 at 2024-10-12T14:29:20.714409898Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0-rc.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/untagged-6caef9a2b65857758178/wave-1.5.0-rc.3-linux-x86_64", :using => :nounzip
    sha256 "dd8b7d2a3a48d7cae60c3ee56a3ee6e76b3893a30cace93cf495df4ba5a3a538"

    def install
      bin.install "wave-1.5.0-rc.3-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/untagged-6caef9a2b65857758178/wave-1.5.0-rc.3-macos-arm64", :using => :nounzip
    sha256 "f967d7d7e7c3cbda0580cf1739e9ee290f66c5f2eb40ce98c2e2804d858fc0e3"

    def install
      bin.install "wave-1.5.0-rc.3-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/untagged-6caef9a2b65857758178/wave-1.5.0-rc.3-macos-x86_64", :using => :nounzip
    sha256 "919e8db82aab60ca0ee92b731c41b70039ea37e33052af08e1c87dda4b4fca3b"

    def install
      bin.install "wave-1.5.0-rc.3-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0-rc.3", output
  end
end
