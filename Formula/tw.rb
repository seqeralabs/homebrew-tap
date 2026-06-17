# Generated with JReleaser 1.24.0 at 2026-06-17T09:13:31.514771443Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.33.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.33.0/tw-linux-x86_64", :using => :nounzip
    sha256 "2c5923647ece3afaaa6ebdfaf9ad474fecaeceb51ce4429bc78a0dda9b719342"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.33.0/tw-osx-arm64", :using => :nounzip
    sha256 "0f3f0145f22bdb12f06dfa8419570f953fc98c6d2177a9fa15e70c067f3b8d16"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.33.0/tw-osx-x86_64", :using => :nounzip
    sha256 "4d0a63b5a24b8a71b3482bdabfba9561c43a3cdb8c7b131ad363c64b70ee828c"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.33.0", output
  end
end
