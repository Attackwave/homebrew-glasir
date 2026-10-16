class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.0/glasir-0.8.0-macos-arm64.tar.gz"
      sha256 "2168b929d437b42c56fd9d887b81c2288092685a6d0297c805e784635bb383f7"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.0/glasir-0.8.0-macos-x86_64.tar.gz"
      sha256 "4d5affb47d9461badc41fea408d88d8972b703c1bc5359f43783df3c0cd06f5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.0/glasir-0.8.0-linux-arm64.tar.gz"
      sha256 "cd278e1c972b1b31468e1baffc89a8e7ca5586438b6afd9f47cb7bbede4f915d"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.8.0/glasir-0.8.0-linux-x86_64.tar.gz"
      sha256 "c575ccfde36c9697af7dfb5f15a1af58d167fb8f3d2e0535d21aed99bba33383"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
