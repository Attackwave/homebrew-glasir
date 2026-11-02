class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.10.0/glasir-0.10.0-macos-arm64.tar.gz"
      sha256 "8b4c87705f2c443a19717c6421cfcb36c248eefd89ceaeb26e1c07ef4461a819"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.10.0/glasir-0.10.0-macos-x86_64.tar.gz"
      sha256 "e45ef405cfc4381ed4f3bd3bed6b9d9af4a867386da30f14a776c537de4bfc01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.10.0/glasir-0.10.0-linux-arm64.tar.gz"
      sha256 "8dfefc5b64b46b5656ac7579779a1b95766e697ebd7e5631aacbdc0bd6a32c0f"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.10.0/glasir-0.10.0-linux-x86_64.tar.gz"
      sha256 "7eacfc16b58c76339ad95f4f58a796ed4fbf6464e81c30b06e4fcf29a33735bb"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
