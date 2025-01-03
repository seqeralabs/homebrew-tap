# Generated with JReleaser 1.16.0 at 2025-01-03T11:55:35.242091821Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0-linux-x86_64", :using => :nounzip
    sha256 "1c85de481cc0c4d6df70be7edeecd6f3726b9746b161b1b5a24fc262b65c50f8"

    def install
      bin.install "wave-1.5.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0-macos-arm64", :using => :nounzip
    sha256 "ac5835b4abed85cfd290d14331abef71a057aa15657131582155b857afcd0884"

    def install
      bin.install "wave-1.5.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0-macos-x86_64", :using => :nounzip
    sha256 "1b47c49ac5aaedf193241856213fe5e786ec37bedc12e7ea22609d7ce851e181"

    def install
      bin.install "wave-1.5.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0", output
  end
end
