# Generated with JReleaser 1.13.0 at 2024-07-16T16:14:50.206537723Z

class CodeownersCli < Formula
  desc "CodeOwners CLI utility"
  homepage "https://github.com/vincentjames501/codeowners-cli"
  version "0.0.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.3/codeowners-cli-0.0.3-linux-x86_64.zip"
    sha256 "fb36bfe9de535eaba987a43c21ae5d3ae8eed24cca85ed18cda9e445bfb22b2f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.3/codeowners-cli-0.0.3-osx-aarch_64.zip"
    sha256 "9542b392b0ba6a77c4b9edcc0329dc85d9976e49cad1408756448672651d6521"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/codeowners-cli" => "codeowners-cli"
  end

  test do
    output = shell_output("#{bin}/codeowners-cli --version")
    assert_match "0.0.3", output
  end
end
