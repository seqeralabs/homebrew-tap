# Generated with JReleaser 1.23.0 at 2026-04-16T19:47:55.530837505Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.26.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.26.0/tw-linux-x86_64", :using => :nounzip
    sha256 "063ad91413328b0d741bb8a8bbe1002a5c186f705fa3b64979782054c9f65865"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.26.0/tw-osx-arm64", :using => :nounzip
    sha256 "2106749e3b95b77b058afae602e769ef57f883a608e0db6df104bac7779cb0c4"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.26.0/tw-osx-x86_64", :using => :nounzip
    sha256 "e96db6bebcf27c2c0141a54a1a0d67bd5ea3e6e5c939bd62d8a7d89cdc17c5d5"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.26.0", output
  end
end
