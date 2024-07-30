# Generated with JReleaser 1.13.0 at 2024-07-30T22:00:20.85452917Z

class CodeownersCli < Formula
  desc "Command line tool for codeowners that helps identify the owners for files in a local repository or directory as well as identifying unowned code owners."
  homepage "https://github.com/vincentjames501/codeowners-cli"
  version "0.0.12"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.12/codeowners-cli-0.0.12-linux-x86_64.zip"
    sha256 "2f805c4a43641dd53be3882e799ce83f3e510fe259c6c6c3578222034461e594"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.12/codeowners-cli-0.0.12-osx-aarch_64.zip"
    sha256 "6dece7615f5c2749dbacb549d1962718dc2af3b6b1a8a5ecf7537a60337df340"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/codeowners-cli" => "codeowners-cli"
  end

  test do
    output = shell_output("#{bin}/codeowners-cli --version")
    assert_match "0.0.12", output
  end
end
