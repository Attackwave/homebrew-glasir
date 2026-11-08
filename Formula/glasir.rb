class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.7/glasir-0.11.7-macos-arm64.tar.gz"
      sha256 "7ceb3053b32788810fb6706bb4a86aabcded379a41146f214b82eacb54e003a2"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.7/glasir-0.11.7-macos-x86_64.tar.gz"
      sha256 "3f80f437d93d81ced11992c2d574c236a3cd8bee625f7bc5bfd03e4fb3e8c952"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.7/glasir-0.11.7-linux-arm64.tar.gz"
      sha256 "3ba7e589b1d91294b4eeefe96deb4ef1e189a831c2346db675a39a8c0c293439"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.7/glasir-0.11.7-linux-x86_64.tar.gz"
      sha256 "bbd718a77a8f0061660ad9c0f06176a1d79d2793eb5347cad04a22214ead916f"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
