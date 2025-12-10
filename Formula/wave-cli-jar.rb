# Generated with JReleaser 1.21.0 at 2025-12-10T14:53:42.980847556Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.8.0/wave-1.8.0.jar", :using => :nounzip
  version "1.8.0"
  sha256 "2a1a467baa474293a8ce4b8f8e8f373fac8349d286bc7203266b6f1f013fb147"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.8.0.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.8.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.8.0", output
  end
end
