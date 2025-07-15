# Generated with JReleaser 1.19.0 at 2025-07-15T17:01:43.389607081Z

class TwJar < Formula
  desc "Tower CLI"
  homepage "https://github.com/seqeralabs/tower-cli"
  url "https://github.com/seqeralabs/tower-cli/releases/download/v0.14.0-A0/tw-jar.jar", :using => :nounzip
  version "0.14.0-A0"
  sha256 "77f81cb7d6aa5ff9aeecdcb42493a704a39d5ab8c4fe196d7278dfdaff4373e2"
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
    assert_match "0.14.0-A0", output
  end
end
