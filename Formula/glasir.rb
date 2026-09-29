class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.5.0/glasir-0.5.0-macos-arm64.tar.gz"
      sha256 "a48e69e7ae9f0b83178abfa7ded0f3929a38194fcbba8a3da6eae118862445d6"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.5.0/glasir-0.5.0-macos-x86_64.tar.gz"
      sha256 "df0d541d83f8407081574b1eb2fec7dd5512ab872edbb33e2121152e657c2c0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.5.0/glasir-0.5.0-linux-arm64.tar.gz"
      sha256 "062cfbf92f1e8f19825da00a304985801726b05e031676c315dcc5b8f7923d9d"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.5.0/glasir-0.5.0-linux-x86_64.tar.gz"
      sha256 "0ee4d3c2a0c0ee5e9a168f74c953302870ceaad6cc3065bbffb892891938e513"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
