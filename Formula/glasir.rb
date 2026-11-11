class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.13.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.2/glasir-0.13.2-macos-arm64.tar.gz"
      sha256 "d0490b12d139bd00f69d0c4c24df2a70d3f1cec6fedc5f30a25f993b79050387"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.2/glasir-0.13.2-macos-x86_64.tar.gz"
      sha256 "7cac14ee9728fe1d9c77ece01af8a463939554c83b1399ae88ba2a24e699d2b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.2/glasir-0.13.2-linux-arm64.tar.gz"
      sha256 "bd61d6b6ad984cf13342626d29dde0ac85f8ebc5b8155c5ceddba93ac9300100"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.2/glasir-0.13.2-linux-x86_64.tar.gz"
      sha256 "6b3b71a8b5e1758defc74903cbdbe47b8efcabe1cde06883c95889954809514f"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
