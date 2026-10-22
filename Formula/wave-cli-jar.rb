# Generated with JReleaser 1.26.0 at 2026-10-22T15:38:44.17771302Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave/tree/master/wave-cli"
  url "https://github.com/seqeralabs/wave/releases/download/cli-v1.9.1/wave-1.9.1.jar", :using => :nounzip
  version "1.9.1"
  sha256 "eae42c23334941064c5ebb5762fb35f5f2871e6213d85539d7fbb4e86a327097"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.9.1.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.9.1.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.9.1", output
  end
end
