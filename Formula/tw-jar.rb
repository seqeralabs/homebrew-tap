# Generated with JReleaser 1.23.0 at 2026-04-28T14:46:07.245993921Z

class TwJar < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  url "https://github.com/seqeralabs/tower-cli/releases/download/v0.28.0/tw-jar.jar", :using => :nounzip
  version "0.28.0"
  sha256 "c4b9921393ca6ecf5bfb41aaf2163225d1404745108b6c53fad37a0f4d7918dc"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install "tw-jar.jar"

    bin.mkpath
    File.open("#{bin}/tw-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/tw-jar.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/tw-jar --version")
    assert_match "0.28.0", output
  end
end
