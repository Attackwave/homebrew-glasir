class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.13.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.1/glasir-0.13.1-macos-arm64.tar.gz"
      sha256 "092de1d689fc181f7d6e22851bf3ae044d0b37b57597a09a90c3c2434ba46d73"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.1/glasir-0.13.1-macos-x86_64.tar.gz"
      sha256 "b0b546754328af66d8cc5c79f8cc42de559b017c492b66302aa7c8a36a68f8a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.1/glasir-0.13.1-linux-arm64.tar.gz"
      sha256 "c2f867d7e98a814ef8b78e6d672e559f77ce5c49481c091187740257ff8df6b2"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.13.1/glasir-0.13.1-linux-x86_64.tar.gz"
      sha256 "648d6067e4762d494cd8642eec7d63bd3266d3190c7030d6aa5db926846636bd"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
