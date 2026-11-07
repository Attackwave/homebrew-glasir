class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.2/glasir-0.11.2-macos-arm64.tar.gz"
      sha256 "b4d1566e1e3765da7755b76ae42bc38d645f532113aa0ae5b16960af15bfc35b"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.2/glasir-0.11.2-macos-x86_64.tar.gz"
      sha256 "c37f794d700d98dc4e71254a1eb5fbb2c64ce92ff76627322234bb9953e3cd58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.2/glasir-0.11.2-linux-arm64.tar.gz"
      sha256 "04913a32f1663d33f3d4c081e6870ee191eeb9f06161e229ce470f24e5f6883a"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.2/glasir-0.11.2-linux-x86_64.tar.gz"
      sha256 "b72e24d1d7db6d3cb264b80d9da3e1f8b734cf282ac1f0dd3434ff465d2576c6"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
