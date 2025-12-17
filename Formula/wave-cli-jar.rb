# Generated with JReleaser 1.21.0 at 2025-12-17T19:23:11.211392064Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.1/wave-1.8.1.jar", :using => :nounzip
  version "1.8.1"
  sha256 "80e2f8e8002d774f3c40dd36832533565daf9bfef4b36d535fdad5ee5d033648"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.8.1.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.8.1.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.8.1", output
  end
end
