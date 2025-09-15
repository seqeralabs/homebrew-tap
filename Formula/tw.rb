# Generated with JReleaser 1.20.0 at 2025-09-15T16:39:53.664155152Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.15.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.15.0/tw-linux-x86_64", :using => :nounzip
    sha256 "d2c2db83b1d8898c6e7a66ffe28540df434cdd70949de91e1df23e7cf4d4d6e7"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.15.0/tw-osx-arm64", :using => :nounzip
    sha256 "976fffbf428781d97d10557fe306a322b5f88deacf79701b66878dbb248660af"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.15.0/tw-osx-x86_64", :using => :nounzip
    sha256 "ba36e626e5bdde875a8eb133292412ca10d4c323798cf5d0d1533c3cf2dc4f2e"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.15.0", output
  end
end
