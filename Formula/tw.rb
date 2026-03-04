# Generated with JReleaser 1.23.0 at 2026-03-04T17:37:20.337690142Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.23.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.23.0/tw-linux-x86_64", :using => :nounzip
    sha256 "ade3dfbb0714002a4924db13bece7b0f1238dc32170c80a684a027f13b1193da"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.23.0/tw-osx-arm64", :using => :nounzip
    sha256 "d57a53d8c687a9f3fc4a368d18379e92dfeaf12283097490e904d5ad8302a95c"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.23.0/tw-osx-x86_64", :using => :nounzip
    sha256 "11f4667e559868b8e5fcad3ca74add440b53a1ed75754fe33e6a111129f59796"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.23.0", output
  end
end
