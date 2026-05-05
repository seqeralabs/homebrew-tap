# Generated with JReleaser 1.24.0 at 2026-05-05T13:11:36.027055227Z

class TwJar < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  url "https://github.com/seqeralabs/tower-cli/releases/download/v0.29.0/tw-jar.jar", :using => :nounzip
  version "0.29.0"
  sha256 "861b079851802824caf16cba26c5b7f0c2f58f0f83f5650121b34ff9cfed0929"
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
    assert_match "0.29.0", output
  end
end
