class OctoCli < Formula
  desc "CLI tool to expose data from any database as a serverless web service."
  homepage "https://octoproject.github.io/octo-cli/"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/octoproject/octo-cli/releases/download/v0.1.0/octo-cli-darwin"
    sha256 "a64da559a9e610beb1218fa6f3f932cab260f57f6e59c7e69bd552faa68facc8"
  elsif OS.linux?
    url "https://github.com/octoproject/octo-cli/releases/download/v0.1.0/octo-cli-linux"
    sha256 "5235f6515c60486ae8e0aeb09020ca4a3196c81cc53cf63199be9a10c2936bf5"
  end

  def install
    bin.install (OS.linux? ? "octo-cli-linux" : "octo-cli-darwin") => "octo-cli"
  end

end
