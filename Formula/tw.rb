# Generated with JReleaser 1.22.0 at 2026-01-12T12:24:25.788655167Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.20.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.20.0/tw-linux-x86_64", :using => :nounzip
    sha256 "34618a47895561303bcb1d82052af9a0561273723e227cac570c97aab83ecae3"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.20.0/tw-osx-arm64", :using => :nounzip
    sha256 "0ddb9eb77dd588ef4949cbe8e116358c6acaf3277e4059eec98b3b62548f5760"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.20.0/tw-osx-x86_64", :using => :nounzip
    sha256 "a053eff854151ccf3fa96a8fabe3b9eedee20b3f132a34bfaf813126b2c3cd0b"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.20.0", output
  end
end
