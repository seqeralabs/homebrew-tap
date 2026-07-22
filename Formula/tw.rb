# Generated with JReleaser 1.25.0 at 2026-07-22T08:50:50.041160911Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.37.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.37.0/tw-linux-x86_64", :using => :nounzip
    sha256 "0bd6ea564eb0cc8f198bb4e56bcafdfa1a2604c14d0e886a23fdaf33c752f05d"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.37.0/tw-osx-arm64", :using => :nounzip
    sha256 "53138c06761852a1a843a14d08f70eedd19e3d5afb4014ec0c90bce67295be70"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.37.0/tw-osx-x86_64", :using => :nounzip
    sha256 "51d72c4655589109f557fc440cb41e94e0f2227c953c1c848d1849c641989e33"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.37.0", output
  end
end
