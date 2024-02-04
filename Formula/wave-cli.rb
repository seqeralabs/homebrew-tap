# Generated with JReleaser 1.10.0 at 2024-02-04T10:29:36.641117929Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.3/wave-1.1.3-linux-x86_64", :using => :nounzip
    sha256 "953935159a5581e3a078528792651c12212302a609dffafe5a007d36f75049c0"

    def install
      bin.install "wave-1.1.3-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.3/wave-1.1.3-macos-arm64", :using => :nounzip
    sha256 "1ffdf6ff9d49d14ba38f563a57412e9a408e25c273ae9b11575243a032d101ed"

    def install
      bin.install "wave-1.1.3-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.3/wave-1.1.3-macos-x86_64", :using => :nounzip
    sha256 "8f57cfafaefe34a9aadb460e3ddfe911bdcf7a93296e7a00d29983c065366a2f"

    def install
      bin.install "wave-1.1.3-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.3", output
  end
end
