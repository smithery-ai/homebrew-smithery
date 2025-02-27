class Smithery < Formula
  desc "Tool for installing and running containerized MCP servers"
  homepage "https://github.com/smithery-ai/cli"
  version "0.1.1"

  if OS.mac?
    url "https://github.com/smithery-ai/cli/releases/download/cli-beta.v0.1.1/smithery-darwin"
    sha256 "89e8b5ec69a8921355bc0d9c8abb6e48521ab18d8f93e7e77f4985161c115cde"
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