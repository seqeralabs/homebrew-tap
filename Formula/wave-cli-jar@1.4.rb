
# Generated with JReleaser 1.12.0 at 2024-05-28T14:13:50.588916204Z

class WaveCliJarAT4 < Formula
    desc "Wave CLI"
    homepage "https://github.com/seqeralabs/wave-cli"
    url "https://github.com/seqeralabs/wave-cli/releases/download/v1.4.1/wave-1.4.1.jar", :using => :nounzip
    version "1.4.1"
    sha256 "0c3bd51a433680312ef24ab76013e47596cde857a122f77192fe43c224ec793d"
    license "Apache-2.0"
  
    depends_on "openjdk@21"
  
    def install
      libexec.install "wave-1.4.1.jar"
  
      bin.mkpath
      File.open("#{bin}/wave-cli-jar", "w") do |f|
        f.write <<~EOS
          #!/bin/bash
          export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
          exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.4.1.jar "$@"
        EOS
      end
    end
  
    test do
      output = shell_output("#{bin}/wave-cli-jar --version")
      assert_match "1.4.1", output
    end
  end
