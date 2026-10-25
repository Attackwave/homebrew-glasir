class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.0/glasir-0.9.0-macos-arm64.tar.gz"
      sha256 "8638d4c0d111b2ab44955eb5e43a9886e95e24affff73a90acdc49755910c2ec"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.0/glasir-0.9.0-macos-x86_64.tar.gz"
      sha256 "49919035302aeada40ae707500c943c75e3d6f419219950347cbf36e630c6b25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.0/glasir-0.9.0-linux-arm64.tar.gz"
      sha256 "5b4489fc00ea4403d4e4a93e2354adb2655c380ba700fa42e0656179856e9d17"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.0/glasir-0.9.0-linux-x86_64.tar.gz"
      sha256 "602902b61fe619515bb7d33bc380cd922362006ec4d1419fa9effe06e88b7922"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
