# Generated with JReleaser 1.23.0 at 2026-04-28T14:46:07.245993921Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.28.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.28.0/tw-linux-x86_64", :using => :nounzip
    sha256 "2691c0e86a4f6d23610f2e69bf197430af59650f3378fec6ee15d00541c6ac45"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.28.0/tw-osx-arm64", :using => :nounzip
    sha256 "7333e40289219334fab7ed05c14597f0580699ed097946104727926f9c9cfd5f"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.28.0/tw-osx-x86_64", :using => :nounzip
    sha256 "4fa62c962e3df3f57296e278e0b29804c01fe54903a37c40d5cdb8ceaa19f88b"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.28.0", output
  end
end
