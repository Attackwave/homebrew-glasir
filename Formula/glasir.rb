class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.5/glasir-0.11.5-macos-arm64.tar.gz"
      sha256 "a819892a746270a46181b554d98ba698205b5dbc516457626868ce651bd1c17f"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.5/glasir-0.11.5-macos-x86_64.tar.gz"
      sha256 "bde1783205e48c1ff5327ca1b00776fdb07919baeefbc3689d875e4d8217b61e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.5/glasir-0.11.5-linux-arm64.tar.gz"
      sha256 "f0469900aad7266c8274bf45b7c490298bbc7283ac0c7cefc6c033e290e7f7e2"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.5/glasir-0.11.5-linux-x86_64.tar.gz"
      sha256 "9c0b194c8b546047fb07ab2a20c6351c441f8ce74894adfe68f7bf878823fa78"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
