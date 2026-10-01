# Generated with JReleaser 1.26.0 at 2026-10-01T14:45:49.884554847Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.41.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.41.0/tw-linux-x86_64", :using => :nounzip
    sha256 "c785afaba0df9b650dc43be5184cda148e8c3166f0c66b053cfa48d3beb2220d"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.41.0/tw-osx-arm64", :using => :nounzip
    sha256 "396d7ff6b9d7ef4e0a2b1a9ac2ba698658fdaec1a5227a36f1373bbbb601bb77"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.41.0/tw-osx-x86_64", :using => :nounzip
    sha256 "a0a9bf291b0ca481ed8527942feb41adeaee4ef1ff64a93b9af35a8032659a5f"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.41.0", output
  end
end
