class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.3/glasir-0.11.3-macos-arm64.tar.gz"
      sha256 "e5f95793d8e29700b729e63bf687df7fa9b113afa9e0b3e072565fd0f48651b4"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.3/glasir-0.11.3-macos-x86_64.tar.gz"
      sha256 "9c560537cd592de60fa050b3a67d451e5b454a1debedad23d3b7a6d92987028d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.3/glasir-0.11.3-linux-arm64.tar.gz"
      sha256 "c4986807f8efd9c9e902effacf66c2328aec4660e91f9040aa87062873cb874e"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.3/glasir-0.11.3-linux-x86_64.tar.gz"
      sha256 "1df315fd0494b38af7504b572c1b673ecf7f014396998514cdac083b40828b40"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
