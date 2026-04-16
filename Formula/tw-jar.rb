# Generated with JReleaser 1.23.0 at 2026-04-16T19:47:55.530837505Z

class TwJar < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  url "https://github.com/seqeralabs/tower-cli/releases/download/v0.26.0/tw-jar.jar", :using => :nounzip
  version "0.26.0"
  sha256 "2caa5f978b979bab5441cd343c15d1fe2e2488ccab22ec201a4c8399afc227a3"
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
    assert_match "0.26.0", output
  end
end
