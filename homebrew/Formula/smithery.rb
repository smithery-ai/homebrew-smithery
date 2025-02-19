class Smithery < Formula
  desc "Tool for installing and running containerized MCP servers"
  homepage "https://github.com/smithery-ai/runner"
  version "0.1.0"

  depends_on "podman"

  if OS.mac?
    url "https://github.com/smithery-ai/runner/releases/download/v#{version}/smithery-macos"
    sha256 "c9fa81ed027070d9366488e8b86a893e14635898fd01547f29ee5af580ce5fdd"
  elsif OS.linux?
    url "https://github.com/smithery-ai/runner/releases/download/v#{version}/smithery-linux"
    sha256 "d40508f74c8ae620347f6a3455a534492bb85bca5018929ccd1efa9e7c39ccee"
  end

  def install
    bin.install Dir["*"].first => "smithery"
  end

  test do
    system "#{bin}/smithery", "--version"
  end
end 