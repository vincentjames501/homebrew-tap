# Generated with JReleaser 1.13.0 at 2024-07-22T15:58:25.970837677Z

class CodeownersCli < Formula
  desc "Command line tool for codeowners that helps identify the owners for files in a local repository or directory as well as identifying unowned code owners."
  homepage "https://github.com/vincentjames501/codeowners-cli"
  version "0.0.9"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.9/codeowners-cli-0.0.9-linux-x86_64.zip"
    sha256 "ecfaa6dc8294e47b1b33fd1cb2d711e869cdcbbed88586f79c8e6e1e9e9dda67"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.9/codeowners-cli-0.0.9-osx-aarch_64.zip"
    sha256 "8a4b4c46ffc23ed6add721cb96ac0f1c51de839a016806d3bda5b67668d1360e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/codeowners-cli" => "codeowners-cli"
  end

  test do
    output = shell_output("#{bin}/codeowners-cli --version")
    assert_match "0.0.9", output
  end
end
