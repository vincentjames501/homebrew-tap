# Generated with JReleaser 1.13.0 at 2024-07-20T01:10:45.185229017Z

class CodeownersCli < Formula
  desc "Command line tool for codeowners that helps identify the owners for files in a local repository or directory as well as identifying unowned code owners."
  homepage "https://github.com/vincentjames501/codeowners-cli"
  version "0.0.8"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.8/codeowners-cli-0.0.8-linux-x86_64.zip"
    sha256 "6b6303bad6a2db38b8c6222f9d8e877b6c4bfb196e0aeb6b6703953d19efbbd2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.8/codeowners-cli-0.0.8-osx-aarch_64.zip"
    sha256 "b9850f0626fb2b3f7f2d6281e03a82da27961404bcf9228d6de61febcbf204de"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/codeowners-cli" => "codeowners-cli"
  end

  test do
    output = shell_output("#{bin}/codeowners-cli --version")
    assert_match "0.0.8", output
  end
end
