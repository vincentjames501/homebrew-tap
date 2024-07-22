# Generated with JReleaser 1.13.0 at 2024-07-22T22:07:40.320262255Z

class CodeownersCli < Formula
  desc "Command line tool for codeowners that helps identify the owners for files in a local repository or directory as well as identifying unowned code owners."
  homepage "https://github.com/vincentjames501/codeowners-cli"
  version "0.0.10"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.10/codeowners-cli-0.0.10-linux-x86_64.zip"
    sha256 "8407e8ed14eecc4dd505a7e6a225640de6527b224a420bfaf312902acb38695b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.10/codeowners-cli-0.0.10-osx-aarch_64.zip"
    sha256 "7b975c837482d8f9545834643c1f9e832f842f3aa41789ca928e00a86e6772f7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/codeowners-cli" => "codeowners-cli"
  end

  test do
    output = shell_output("#{bin}/codeowners-cli --version")
    assert_match "0.0.10", output
  end
end
