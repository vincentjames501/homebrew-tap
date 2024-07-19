# Generated with JReleaser 1.13.0 at 2024-07-19T21:32:40.363164578Z

class CodeownersCli < Formula
  desc "CodeOwners CLI utility"
  homepage "https://github.com/vincentjames501/codeowners-cli"
  version "0.0.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.5/codeowners-cli-0.0.5-linux-x86_64.zip"
    sha256 "64451f687837ce62add3b614b0b102d35ab0cbf3143e95669ae4198f8b1726fd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.5/codeowners-cli-0.0.5-osx-aarch_64.zip"
    sha256 "106ab2bde4df7081af5e236d1c4b49e643779cf20f07836ecfe82c48a6186d8b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/codeowners-cli" => "codeowners-cli"
  end

  test do
    output = shell_output("#{bin}/codeowners-cli --version")
    assert_match "0.0.5", output
  end
end
