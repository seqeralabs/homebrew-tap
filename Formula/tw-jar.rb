# Generated with JReleaser 1.21.0 at 2025-11-25T17:49:53.426237076Z

class TwJar < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  url "https://github.com/seqeralabs/tower-cli/releases/download/v0.16.0/tw-jar.jar", :using => :nounzip
  version "0.16.0"
  sha256 "84e6803e6703b6d8626483314eb0b8b34e7b85029009dd48062c917972c7cdc9"
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
    assert_match "0.16.0", output
  end
end
