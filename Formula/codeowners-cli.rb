class CodeownersCli < Formula
    desc "codeowners-cli -- Command line tool for identifying the owners for files in a local repository or directory as well as identifying unowned codeowners."
    homepage "https://github.com/vincentjames501/codeowners-cli"
    version "0.0.1"
    license "Apache-2.0"
  
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.1/codeowners-cli-0.0.1-linux-x86_64.zip"
      sha256 "63e6c49fdd6cd287a2899f4da0ecff74b9193b3d44179240df35affd65145c31"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.1/codeowners-cli-0.0.1-osx-aarch_64.zip"
      sha256 "a10d0278d42652d5d3dbf3761ceb12c19005d5a0802c754ec881f8bd3a0ce9d8"
    end
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/codeowners-cli"
    end
  
    test do
      output = shell_output("#{bin}/codeowners-cli --version")
      assert_match "0.0.1", output
    end
  end