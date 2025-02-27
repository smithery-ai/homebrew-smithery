class Smithery < Formula
  desc "Tool for installing and running containerized MCP servers"
  homepage "https://github.com/smithery-ai/runner"
  version "0.1.5"

  depends_on "podman"

  if OS.mac?
    url "https://github.com/smithery-ai/runner/releases/download/cli-beta.v0.1.5/smithery-darwin"
    sha256 "89fc34c07d0e0f07e3f137dc12fd01fe585e123088432a15b9ed1fc910f0d9fe"
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