# Generated with JReleaser 1.9.0 at 2023-12-20T11:53:30.811068236Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.2/wave-1.1.2-linux-x86_64"
    sha256 "cdb9e9706cfac5a1533bbb431c315b80a039bfc618b798a8e54758befd063a2c"

    def install
      bin.install "wave-1.1.2-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.2/wave-1.1.2-macos-arm64"
    sha256 "4f4f3ddb859f20fe0e50166909750c56d78719d1d40e85c43f9db84e19d3e966"

    def install
      bin.install "wave-1.1.2-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.2/wave-1.1.2-macos-x86_64"
    sha256 "ee5551d97b5f592b5262d944763a80b97029cf976b967163ced62e1b181dbbbd"

    def install
      bin.install "wave-1.1.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.2", output
  end
end
