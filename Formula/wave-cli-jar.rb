# Generated with JReleaser 1.10.0 at 2024-02-04T10:29:36.641117929Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.3/wave-1.1.3.jar", :using => :nounzip
  version "1.1.3"
  sha256 "bdd03efbea3d44eadd227b9211c44ed3af79c4c77295c47142c98603277caa51"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.1.3.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.1.3.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.1.3", output
  end
end
