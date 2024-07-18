# Generated with JReleaser 1.13.0 at 2024-07-18T15:42:57.122070697Z

class CodeownersCli < Formula
  desc "CodeOwners CLI utility"
  homepage "https://github.com/vincentjames501/codeowners-cli"
  version "0.0.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.4/codeowners-cli-0.0.4-linux-x86_64.zip"
    sha256 "e526c46372d7e0b4d76bc118871fb3df07764f45bf04b7c29ce93bd390863273"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vincentjames501/codeowners-cli/releases/download/v0.0.4/codeowners-cli-0.0.4-osx-aarch_64.zip"
    sha256 "dfef6a8267dc7798ba3abef82e788cd864169d5941fae5086c208194076aa544"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/codeowners-cli" => "codeowners-cli"
  end

  test do
    output = shell_output("#{bin}/codeowners-cli --version")
    assert_match "0.0.4", output
  end
end
