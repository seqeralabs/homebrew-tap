# Generated with JReleaser 1.9.0 at 2023-12-20T11:53:30.811068236Z
class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.2/wave-1.1.2.jar", :using => :nounzip
  version "1.1.2"
  sha256 "ee6d00a3ca9182bb18e7ab9032de971935c61c329d6ecdad9e0c79a26a9777ca"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.1.2.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.1.2.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.1.2", output
  end
end
