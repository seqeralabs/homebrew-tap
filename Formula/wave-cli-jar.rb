# Generated with JReleaser 1.23.0 at 2026-03-24T20:45:04.49404164Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.2/wave-1.8.2.jar", :using => :nounzip
  version "1.8.2"
  sha256 "69178654a3c21d98dc0f0873c70ffaf55332ae877bdf274f6134cced20863fe7"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.8.2.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.8.2.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.8.2", output
  end
end
