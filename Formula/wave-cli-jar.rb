# Generated with JReleaser 1.26.0 at 2026-10-07T09:21:04.068916251Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.9.0/wave-1.9.0.jar", :using => :nounzip
  version "1.9.0"
  sha256 "d2da1eb9781e6ceaa6ae6eefb0af069b863303b09355214c12045b5682298187"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.9.0.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.9.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.9.0", output
  end
end
