# Generated with JReleaser 1.24.0 at 2026-05-22T08:41:44.513589632Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.32.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.32.0/tw-linux-x86_64", :using => :nounzip
    sha256 "3f329620078773410bc9b87a8dac4e3dedf0541395b9fbc0a26609bb0c5afcd1"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.32.0/tw-osx-arm64", :using => :nounzip
    sha256 "65a69c0989107671e5c7295d1207be0ac10a60a1716abff0909532fd23556df2"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.32.0/tw-osx-x86_64", :using => :nounzip
    sha256 "2a890f552e96c7c84f744ddc1c04bd0ad0eb320ebc2de8a13a57a454aff0b333"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.32.0", output
  end
end
