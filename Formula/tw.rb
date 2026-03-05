# Generated with JReleaser 1.23.0 at 2026-03-05T10:43:24.795667302Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.24.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.24.0/tw-linux-x86_64", :using => :nounzip
    sha256 "1616bd7585992526b37fe06f22b3dec96d368ea20c7b7f60ef2aacc6e1a91196"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.24.0/tw-osx-arm64", :using => :nounzip
    sha256 "dcd57597e6dfdd031fd7b9eddadd7ea24c49f7ed29183024edfa6d9c8759f4bc"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.24.0/tw-osx-x86_64", :using => :nounzip
    sha256 "4aeb22c18fe1d86237f187c316ff46050bd4150b0f72e52899c07f6b035babb5"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.24.0", output
  end
end
