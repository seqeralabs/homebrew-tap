# Generated with JReleaser 1.24.0 at 2026-05-11T13:03:30.760923588Z

class Tw < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  version "0.30.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.30.0/tw-linux-x86_64", :using => :nounzip
    sha256 "d42d7f447a15645bc1b59e71942d89e6d623203c28aeb05b643f3de710ba0622"

    def install
      bin.install "tw-linux-x86_64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.30.0/tw-osx-arm64", :using => :nounzip
    sha256 "aca6e8dbe273ae71e07eacda02ad3e511a0e4baeb53af4e086dfd35e04a2c2f1"

    def install
      bin.install "tw-osx-arm64" => "tw"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/seqeralabs/tower-cli/releases/download/v0.30.0/tw-osx-x86_64", :using => :nounzip
    sha256 "a8cad58777d687df64fdb110620a2e75835913e5b38cb4ef647389b48f77c562"

    def install
      bin.install "tw-osx-x86_64" => "tw"
    end
  end


  test do
    output = shell_output("#{bin}/tw --version")
    assert_match "0.30.0", output
  end
end
