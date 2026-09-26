class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.3.0/glasir-0.3.0-macos-arm64.tar.gz"
      sha256 "de178866cee539ddf6bf85fd671ac10afbf26c7e7c1ad10c4412a5d4f9e8286d"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.3.0/glasir-0.3.0-macos-x86_64.tar.gz"
      sha256 "751648e799397f6eeba9bec17fc97854e1225428bae9e5b451f0180c54e8b278"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.3.0/glasir-0.3.0-linux-arm64.tar.gz"
      sha256 "1832b822b8055b48420b0fb1750977371725804310c6af4fa74a53a54539aadd"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.3.0/glasir-0.3.0-linux-x86_64.tar.gz"
      sha256 "0830fae77f7680e0a02fa27e36b10c3280ecfbd1b371d94f619966d0ae14a1d1"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
