# Generated with JReleaser 1.16.0 at 2025-01-03T11:55:35.242091821Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0/wave-1.5.0.jar", :using => :nounzip
  version "1.5.0"
  sha256 "204663552a9a1ffa00fb9fa00877a1302dc2ffda9e63a67343ce0299058e2e4e"
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
