# Generated with JReleaser 1.11.0 at 2024-04-22T18:15:22.411772517Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.1/wave-1.3.1.jar", :using => :nounzip
  version "1.3.1"
  sha256 "b39277b490e0f8298499f6f48fb75f54c0055067bc0b74e4762a210e3c1e020c"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.3.1.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.3.1.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.3.1", output
  end
end
