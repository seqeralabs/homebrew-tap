# Generated with JReleaser 1.18.0 at 2025-05-24T17:22:24.221129525Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.6.1/wave-1.6.1.jar", :using => :nounzip
  version "1.6.1"
  sha256 "d0ddf9a6bbe72c71134471bb36c24a45c22bfc50b9d3811413f58e2a2d36ff56"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.6.1.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.6.1.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.6.1", output
  end
end
