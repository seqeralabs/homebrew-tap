# Generated with JReleaser 1.23.0 at 2026-03-18T14:03:15.651628563Z

class TwJar < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  url "https://github.com/seqeralabs/tower-cli/releases/download/v0.25.0/tw-jar.jar", :using => :nounzip
  version "0.25.0"
  sha256 "0cce858a4aef4118ce3f889e78d2093ee509b88d20d85ae854bd9fa8585797d6"
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
    assert_match "0.25.0", output
  end
end
