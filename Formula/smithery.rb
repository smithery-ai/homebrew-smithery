class Smithery < Formula
  desc "Tool for installing and running containerized MCP servers"
  homepage "https://github.com/smithery-ai/runner"
  version "0.1.2"

  depends_on "podman"

  if OS.mac?
    url "https://github.com/smithery-ai/runner/releases/download/cli-beta.v0.1.2/smithery-darwin"
    sha256 "167581fbeed28ac5eb5c045000de8827dfe8738ac53f7438a89c5d97e0343ead"
  else
    odie "Smithery is currently only supported on macOS"
  end

  def install
    bin.install "smithery-darwin" => "smithery"
  end

  test do
    system "#{bin}/smithery", "--version"
  end
end 