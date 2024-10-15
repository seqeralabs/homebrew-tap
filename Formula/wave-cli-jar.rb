# Generated with JReleaser 1.14.0 at 2024-10-15T08:45:25.320330782Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0.jar", :using => :nounzip
  version "1.5.0"
  sha256 "c4a44393cedc50539ef6c51d01a53671d14150a70ca90ba3e7b1059dfd91b1d8"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.5.0.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.5.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.5.0", output
  end
end
