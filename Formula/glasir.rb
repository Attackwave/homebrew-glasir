class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.7.0/glasir-0.7.0-macos-arm64.tar.gz"
      sha256 "9d5ade24e01e0dea1ffbb3817e1ecdf1db6f06789e2ad293296decf7072eef57"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.7.0/glasir-0.7.0-macos-x86_64.tar.gz"
      sha256 "bf20d7a33585b4ba2658e3c98221e3cbec02e49b48de34950b602e2ce3e915da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.7.0/glasir-0.7.0-linux-arm64.tar.gz"
      sha256 "9c51c79c28f2e70b920859344fff9c3757332754edab3cb1a81d9970fe9f7e58"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.7.0/glasir-0.7.0-linux-x86_64.tar.gz"
      sha256 "b1fe368701fe45d05f4084e1a6fd0674b63cd411a6b829e9dbe1e8f8931c1d3a"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
