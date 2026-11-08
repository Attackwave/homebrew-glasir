class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.8/glasir-0.11.8-macos-arm64.tar.gz"
      sha256 "3e020e6209d662609ef4bfd756a235233dff47ded5bf74aab6bbc89bb610918e"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.8/glasir-0.11.8-macos-x86_64.tar.gz"
      sha256 "114b9446c080a6adb78ab69404599aad3fb5b07f406ee4d49338d92e76cbb86c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.8/glasir-0.11.8-linux-arm64.tar.gz"
      sha256 "8248d707ea967e0438791f63ab900d5b44a1b1b20cee8b77754cdeb1dd263c53"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.8/glasir-0.11.8-linux-x86_64.tar.gz"
      sha256 "f6e52c2295c601fdfbe43f431240d8e39ee4558d947a64bb65c8189b56400f65"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
