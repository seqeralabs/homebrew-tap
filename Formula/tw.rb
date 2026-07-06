# Generated with JReleaser 1.25.0 at 2026-07-06T14:38:13.055949825Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.35.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.35.0/tw-linux-x86_64", :using => :nounzip
    sha256 "2cd789f6cff826ddd0ece0115003cb18373e0eb11b76ae6aea77747e4b527dcb"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.35.0/tw-osx-arm64", :using => :nounzip
    sha256 "1b451119c4de4dd6fa0cb2e18ad001e2ca64f95378620e1c6ba77c9d568b60d4"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.35.0/tw-osx-x86_64", :using => :nounzip
    sha256 "693fe1c8bf173accaecd49c7431d29153c19082e67e6b591574b71749f6e6870"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.35.0", output
  end
end
