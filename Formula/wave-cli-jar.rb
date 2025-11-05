# Generated with JReleaser 1.21.0 at 2025-11-05T08:53:12.046932686Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.7.0/wave-1.7.0.jar", :using => :nounzip
  version "1.7.0"
  sha256 "8625a3019c250c8a7b89db47d2a1148d125029099a19dd68e3f6c554f3a8281b"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.7.0.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.7.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.7.0", output
  end
end
