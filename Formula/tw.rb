# Generated with JReleaser 1.22.0 at 2026-01-08T13:26:57.257656305Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.19.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.19.0/tw-linux-x86_64", :using => :nounzip
    sha256 "61992a41fdba455cece9da1044ee587930e28abd02f4d0840ce3f1aea91ed77f"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.19.0/tw-osx-arm64", :using => :nounzip
    sha256 "0b91adea42c736f190240f7fbb83803c7950b5dd327183d4f10c50799f643ff6"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.19.0/tw-osx-x86_64", :using => :nounzip
    sha256 "512d969cf945fe2dcb0326e309172e3d19360e446bc1635954dc7ee36d7b7229"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.19.0", output
  end
end
