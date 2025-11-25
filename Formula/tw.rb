# Generated with JReleaser 1.21.0 at 2025-11-25T17:49:53.426237076Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.16.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.16.0/tw-linux-x86_64", :using => :nounzip
    sha256 "2e3ad77f5fd001cdff7e45dcf3e3647ce94c449a73e4c2df74c05bb78521ece9"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.16.0/tw-osx-arm64", :using => :nounzip
    sha256 "3a18d7fc81aa229c8140cb5e1997ab9250137d2ee616eaa9c8dc9505b4db69af"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.16.0/tw-osx-x86_64", :using => :nounzip
    sha256 "9ba862da62f2f8085027dc753ca9f3feb499d55a0f4f36b42fb2c613da8b7bfe"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.16.0", output
  end
end
