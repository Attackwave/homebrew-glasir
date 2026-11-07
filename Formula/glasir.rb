class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.6/glasir-0.11.6-macos-arm64.tar.gz"
      sha256 "074ccf1674724081e789749f8088501cbdf43adbcf7efac30ee41cb350ba5201"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.6/glasir-0.11.6-macos-x86_64.tar.gz"
      sha256 "ab8e7c252073608cea9fa74d6c400f68f4a65188c1c613c387b3898c279313c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.6/glasir-0.11.6-linux-arm64.tar.gz"
      sha256 "ce49cb7420e8cbbd833b556a2edc58c42c46c5c202be872ce54b6a8e1c75e614"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.6/glasir-0.11.6-linux-x86_64.tar.gz"
      sha256 "9e1c56801303572a0d02a3b081b8ec7b0b540b5ca83bfc454407e3875c177f27"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
