# Generated with JReleaser 1.12.0 at 2024-05-17T11:52:56.483521267Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.0/wave-1.4.0.jar", :using => :nounzip
  version "1.4.0"
  sha256 "2457828005ac638d1abdd9690322639f639afda7d7c8d5e4933407f982ee84ad"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.4.0.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.4.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.4.0", output
  end
end
