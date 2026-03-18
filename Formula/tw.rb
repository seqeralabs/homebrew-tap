# Generated with JReleaser 1.23.0 at 2026-03-18T14:03:15.651628563Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.25.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.25.0/tw-linux-x86_64", :using => :nounzip
    sha256 "f1dfff9317ee0c2981e496a47296836bf3b5f249887e3bfc17cd0376545aeb39"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.25.0/tw-osx-arm64", :using => :nounzip
    sha256 "0f573433009b6b6c0402071ac23588820d650bdb34b0785466fff7bde695416d"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.25.0/tw-osx-x86_64", :using => :nounzip
    sha256 "802f0e558f99e9df0509e9099f068530f32ed10ba36a2a5480d8b268b8a3d677"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.25.0", output
  end
end
