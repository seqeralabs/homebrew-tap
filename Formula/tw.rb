# Generated with JReleaser 1.25.0 at 2026-07-14T11:15:53.586669707Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.36.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.36.0/tw-linux-x86_64", :using => :nounzip
    sha256 "f983de7fe072548896440ca2dd4090cad442b8f73c2a047845ca9881c5668203"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.36.0/tw-osx-arm64", :using => :nounzip
    sha256 "d87654c61ba9afec5f0d206f6d064da5909de7f4de87879e92c1812cc1f3a309"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.36.0/tw-osx-x86_64", :using => :nounzip
    sha256 "5123f1f49130be36f0a638e853cad0fd0c1e76633529df29cf3b0dc17e8674ae"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.36.0", output
  end
end
