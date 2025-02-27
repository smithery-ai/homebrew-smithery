class Smithery < Formula
  desc "Tool for installing and running containerized MCP servers"
  homepage "https://github.com/smithery-ai/runner"
  version "0.1.4"

  depends_on "podman"

  if OS.mac?
    url "https://github.com/smithery-ai/runner/releases/download/cli-beta.v0.1.4/smithery-darwin"
    sha256 "05aced5eaddf7c81427f6dfbc5d815ad8720f9121a3ce930924f4146737ca25b"
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