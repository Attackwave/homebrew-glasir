class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.0/glasir-0.6.0-macos-arm64.tar.gz"
      sha256 "8602f6deb8b32244195333f47623019abe7bd69201c953af0bed8da476b1cf1c"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.0/glasir-0.6.0-macos-x86_64.tar.gz"
      sha256 "130ff8ede7d832f09a0e1874fbe60a023bad5009e0644fbd1347c184f0507b85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.0/glasir-0.6.0-linux-arm64.tar.gz"
      sha256 "6df56f3cc552314f8b0c3b0c1874a6d31d616706639aedde26f2cf872be2306a"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.0/glasir-0.6.0-linux-x86_64.tar.gz"
      sha256 "645e7da1cfaafa4e9a73bf6c4197b09e1960abf0153fffd5c06a5876e6de59d7"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
