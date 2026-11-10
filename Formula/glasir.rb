class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.12.0/glasir-0.12.0-macos-arm64.tar.gz"
      sha256 "281c4a1e2d05133e51d337b8c9dd15795549e88318be1ede3f38d39b143bf2a0"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.12.0/glasir-0.12.0-macos-x86_64.tar.gz"
      sha256 "49ccaf775615de378665e32a7ac8ac6d2cf44dcf7c97f0d56f5cc1b0cce9e943"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.12.0/glasir-0.12.0-linux-arm64.tar.gz"
      sha256 "f3ad90191f227acca0ebbda85905cc8967f75496bed144ddd3dda8f9035a4936"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.12.0/glasir-0.12.0-linux-x86_64.tar.gz"
      sha256 "f4be90d5dd85023eff299197880492572e8a32355dda384c964672af846effb2"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
