class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.1/glasir-0.9.1-macos-arm64.tar.gz"
      sha256 "050c0ed4943b03d055c009148a7a11e17e1b18af84fcefc03d4b1187eeaaeef1"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.1/glasir-0.9.1-macos-x86_64.tar.gz"
      sha256 "e4b0531617ef581c83ee65b9be638a92ab26fcb3fbade2a7740547a2fd9d01ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.1/glasir-0.9.1-linux-arm64.tar.gz"
      sha256 "ec2ece0b3a16c37decbda316e9f82fd2f9137e83b2cc8f148d07fb03531d6070"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.9.1/glasir-0.9.1-linux-x86_64.tar.gz"
      sha256 "65923e40fda75ac69e698b5baf7fe2f15706d9b3fc08843f6b23819159d40013"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
