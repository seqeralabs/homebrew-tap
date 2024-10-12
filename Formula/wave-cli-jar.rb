# Generated with JReleaser 1.14.0 at 2024-10-12T14:29:20.714409898Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.5.0-rc.3/wave-1.5.0-rc.3.jar", :using => :nounzip
  version "1.5.0-rc.3"
  sha256 "11ee7e97c5df8d6c2fbbd38706ada16680d7ae7d44989f59ce35d155fccec844"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.5.0-rc.3.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.5.0-rc.3.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.5.0-rc.3", output
  end
end
