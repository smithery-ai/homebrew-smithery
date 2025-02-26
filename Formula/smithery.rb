class Smithery < Formula
  desc "Tool for installing and running containerized MCP servers"
  homepage "https://github.com/smithery-ai/runner"
  version "0.1.0"

  depends_on "podman"

  if OS.mac?
    url "https://github.com/smithery-ai/runner/releases/download/cli-beta.v0.1.0/smithery-darwin"
    sha256 "7701472421919c26541e607b79020898a7e1bc5fba318f12165ba3f4ecbe4520"
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