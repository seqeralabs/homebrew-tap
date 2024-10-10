# Generated with JReleaser 1.14.0 at 2024-10-10T09:58:38.739036151Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.2/wave-1.5.0-rc.2.jar", :using => :nounzip
  version "1.5.0-rc.2"
  sha256 "6b7cd15275a6a17496eba7b58b39fae05a0b070ee2b82509d1f8b3c8edf1659d"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.5.0-rc.2.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.5.0-rc.2.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.5.0-rc.2", output
  end
end
