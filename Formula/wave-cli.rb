# Generated with JReleaser 1.10.0 at 2024-02-12T17:44:45.944967769Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.2.0/wave-1.2.0-linux-x86_64", :using => :nounzip
    sha256 "12c572ec3384ddc07a623dcff5262398e0f7d50306b9f2bd35f779c7264a1c38"

    def install
      bin.install "wave-1.2.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.2.0/wave-1.2.0-macos-arm64", :using => :nounzip
    sha256 "813867e931d19f2452a1b8eee52dc976e08f4146001beed755b12ef44de29050"

    def install
      bin.install "wave-1.2.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.2.0/wave-1.2.0-macos-x86_64", :using => :nounzip
    sha256 "97152d86d6ffed9e97b4eea1dc369525bdbc9bb19f0fefca79a10cbcbb82c549"

    def install
      bin.install "wave-1.2.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.2.0", output
  end
end
