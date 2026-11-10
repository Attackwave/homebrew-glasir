class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.0/glasir-0.13.0-macos-arm64.tar.gz"
      sha256 "bd694c5c3e054c0ce9f8283f5bd1cac7a7d4db51547c1304d812da2759d37ed2"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.0/glasir-0.13.0-macos-x86_64.tar.gz"
      sha256 "01a34c6783606befb67443df3961dee7702015c941f9c084227521fd7a281d7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.0/glasir-0.13.0-linux-arm64.tar.gz"
      sha256 "625f214a772dd735ba342b9087e7b42d8ebd85b54ddbe13085667684346c5431"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.0/glasir-0.13.0-linux-x86_64.tar.gz"
      sha256 "76ec8f1c1ec6b7cdb28a6a4596e7e303ffc0b9ee09933e84fe6e04a94921c139"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
