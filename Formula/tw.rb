# Generated with JReleaser 1.24.0 at 2026-05-13T08:17:54.734067481Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.31.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.31.0/tw-linux-x86_64", :using => :nounzip
    sha256 "d2ab4ad2e46a602ce45f40481c61d9898a9a6b718bed5af03641f1acf6bcad43"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.31.0/tw-osx-arm64", :using => :nounzip
    sha256 "308ac2a9729a1ac93ab514256c209f6b7c33a0d699e08e4bd4adc45d7948ce1e"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.31.0/tw-osx-x86_64", :using => :nounzip
    sha256 "80b5ab422866de78904443c62a1cdefb4329bab2cd4e03cb5e5800dea7cfc923"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.31.0", output
  end
end
