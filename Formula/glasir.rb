class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.1/glasir-0.8.1-macos-arm64.tar.gz"
      sha256 "02b38ef9c114656e5c9dcf4407399632cfa14efe2b97b38af52993f279909292"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.1/glasir-0.8.1-macos-x86_64.tar.gz"
      sha256 "3a907a9697ed680efb1b4b66732320e155dd3ed0f09da3d712a4b1a3ca95e150"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.1/glasir-0.8.1-linux-arm64.tar.gz"
      sha256 "9bd8fe523af005e8e5dc2a1e66ad3c96874d8a0776c47bc4d08c237698b22845"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.1/glasir-0.8.1-linux-x86_64.tar.gz"
      sha256 "3824d67a9ae82b11b05819513efeb9399b547d52858f327633cee077e6413576"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
