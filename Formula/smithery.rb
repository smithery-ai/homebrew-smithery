class Smithery < Formula
  desc "Tool for installing and running containerized MCP servers"
  homepage "https://github.com/smithery-ai/cli"
  version "0.1.14"

  if OS.mac?
    url "https://github.com/smithery-ai/cli/releases/download/cli-beta.v0.1.14/smithery-darwin"
    sha256 "87ac5180e12df4afba619a0a9b83e4bfce28351fe42ade3dcea20c0b732a19f8"
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