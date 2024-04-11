# Generated with JReleaser 1.11.0 at 2024-04-11T14:51:12.410791628Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.3.0/wave-1.3.0.jar", :using => :nounzip
  version "1.3.0"
  sha256 "81dee74a782b5be58e57a8357a3d004134fec419434fee7cc0f5725ab76be810"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.3.0.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.3.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.3.0", output
  end
end
