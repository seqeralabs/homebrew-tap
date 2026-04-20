# Generated with JReleaser 1.23.0 at 2026-04-20T09:48:53.402713639Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.27.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.27.0/tw-linux-x86_64", :using => :nounzip
    sha256 "2ae2ddd4b3c93dd77373d2eb9d699cfb73ac288ad949fd25aee3fce733f8cec6"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.27.0/tw-osx-arm64", :using => :nounzip
    sha256 "3cef71b656e61bfc4b05cf4681cda02a36e5ccc21171e35682d1fed58cc2abd8"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.27.0/tw-osx-x86_64", :using => :nounzip
    sha256 "bf55dd928834b4db9509e1b77186d7de063df6058d1793a5019f5cf818530b87"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.27.0", output
  end
end
