class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.9/glasir-0.11.9-macos-arm64.tar.gz"
      sha256 "f57ab15dca04c790b9c6b2639ea82c3aeb512cd75208ffa9416fd615ce7955d2"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.9/glasir-0.11.9-macos-x86_64.tar.gz"
      sha256 "ea1efa11016c0fd096f348c9b05eb5ecbee9be6a23fa91360c09412f519b678d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.9/glasir-0.11.9-linux-arm64.tar.gz"
      sha256 "1dbc29c6f0215123737874c3ca4031b03d3aa03956095aa4833dc6acbc55f873"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.9/glasir-0.11.9-linux-x86_64.tar.gz"
      sha256 "9dfeb47977bd4ef7675bab0174757e3bbd6999a27bad1e1bed36320d5ddf8907"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
