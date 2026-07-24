# Generated with JReleaser 1.25.0 at 2026-07-24T18:06:30.787600524Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.38.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.38.0/tw-linux-x86_64", :using => :nounzip
    sha256 "93a4d73b5101d20e54be546f8fbb6b6fb56fbb6fc9cd31b796089f0a9ba22a80"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.38.0/tw-osx-arm64", :using => :nounzip
    sha256 "022b9b360ce92d608a8ef008e60054e41b4c2c75e40b1399d41e95a546bae762"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.38.0/tw-osx-x86_64", :using => :nounzip
    sha256 "6edadfd0a97dc6303fda8512fc9f125a64cf126cbed081628f4fb6a12d9c620c"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.38.0", output
  end
end
