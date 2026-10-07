# Generated with JReleaser 1.26.0 at 2026-10-07T09:21:04.068916251Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.9.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.9.0/wave-1.9.0-linux-arm64", :using => :nounzip
    sha256 "74ffd0b5fed5a866ea10b12be61c08242b764acae8a3a29cb87617f986c6333b"

    def install
      bin.install "wave-1.9.0-linux-arm64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.9.0/wave-1.9.0-linux-x86_64", :using => :nounzip
    sha256 "90d4aed8dced187fe150e654e700fa942ad4ac80524458b657a320a8e9927153"

    def install
      bin.install "wave-1.9.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.9.0/wave-1.9.0-macos-arm64", :using => :nounzip
    sha256 "27f66d88d465d86ace44bb2e2aa6059e80f6d55465bdf6ad797940b94bab7e16"

    def install
      bin.install "wave-1.9.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.9.0/wave-1.9.0-macos-x86_64", :using => :nounzip
    sha256 "2249e2b92201186a211ff2b36ab11a980b9e807482d16f59812d9f8b1fcd69cd"

    def install
      bin.install "wave-1.9.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.9.0", output
  end
end
