# Generated with JReleaser 1.26.0 at 2026-10-08T11:12:00.502277764Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.42.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.42.0/tw-linux-x86_64", :using => :nounzip
    sha256 "7ac3645bcb845f8fd161427b3a53bb100dbae2898cec19bbd9f162f1403b9c42"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.42.0/tw-osx-arm64", :using => :nounzip
    sha256 "7969c73b5480d8060cfca147cc4c6ce3d4ae9f14a593351194f6410a9982f9d3"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.42.0/tw-osx-x86_64", :using => :nounzip
    sha256 "3611ed6800ebf934fb34a9f1ab91ed28672c54dff25b9ecd52006a4972868a62"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.42.0", output
  end
end
