# Generated with JReleaser 1.19.0 at 2025-07-15T17:01:43.389607081Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.14.0-A0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.14.0-A0/tw-linux-x86_64", :using => :nounzip
    sha256 "81394d0eb01e65df54ac90144b5ddf53218a45b53277fe4b121a48feb16b825a"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.14.0-A0/tw-osx-arm64", :using => :nounzip
    sha256 "9a01a57d0d38d772e35f3265bac90a4c8ae7a11d5019230e06898d617da96434"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.14.0-A0/tw-osx-x86_64", :using => :nounzip
    sha256 "07ea734486741242dc3ebf23bd596d7eec28788dadb52ec015f9899d68e19e3e"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.14.0-A0", output
  end
end
