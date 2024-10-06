# Generated with JReleaser 1.14.0 at 2024-10-06T20:29:15.623090801Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.1/wave-1.5.0-rc.1.jar", :using => :nounzip
  version "1.5.0-rc.1"
  sha256 "cba1e91d48fc0697990f1b07200bdbe43c4904fd8da247865620b54d589ebed6"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.5.0-rc.1.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.5.0-rc.1.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.5.0-rc.1", output
  end
end
