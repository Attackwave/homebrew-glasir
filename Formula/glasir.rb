class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.2.1/glasir-0.2.1-macos-arm64.tar.gz"
      sha256 "7f394999142327469f6d130c40f10b1047f7b0eaba7f138db37c5b60fb03381a"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.2.1/glasir-0.2.1-macos-x86_64.tar.gz"
      sha256 "16f092e80fb9a2e49fdf8e2c302b5aec824f6bab00d0e87c10847c0942d4972a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.2.1/glasir-0.2.1-linux-arm64.tar.gz"
      sha256 "994e86e0a619dcd7e2d13b71b1ee1c1bd90348d8db540d3a13593507b5d75b04"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.2.1/glasir-0.2.1-linux-x86_64.tar.gz"
      sha256 "3f52d916536286384ab45bd81673ca17b9b9d2290a77f9cce8158b08ce022f28"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
