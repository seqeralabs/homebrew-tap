# Generated with JReleaser 1.10.0 at 2024-01-28T21:30:48.720510857Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.2.0/wave-1.2.0.jar", :using => :nounzip
  version "1.2.0"
  sha256 "3fe07f9f248ddf5d3dc15677e1ff185160dec9ee597ec588d940a87c117801a5"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.2.0.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.2.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.2.0", output
  end
end
