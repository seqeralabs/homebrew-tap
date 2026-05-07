# Generated with JReleaser 1.24.0 at 2026-05-07T09:17:16.254873873Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.29.1"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.29.1/tw-linux-x86_64", :using => :nounzip
    sha256 "0c3060bb2444d4d45aea1f251b9fedbf3a0cdfcdf5989b1e1939c1ba81807453"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.29.1/tw-osx-arm64", :using => :nounzip
    sha256 "2be90c59b50e128ce09ce42418290656f0817a21cfaf6afc7696f22f5224addc"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.29.1/tw-osx-x86_64", :using => :nounzip
    sha256 "7e3897a5f8a8c996cd3e22864621310f612fb8cc63a23b31d9cdf028c9d0ff0c"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.29.1", output
  end
end
