class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.1.0/glasir-0.1.0-macos-arm64.tar.gz"
      sha256 "43e468a7d6711032aef4b99b96ddf1eabc3d85a594ddf1cd2fd9c0408826036e"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.1.0/glasir-0.1.0-macos-x86_64.tar.gz"
      sha256 "57bda1e1d103f5050fa64831730263b224f597cf9cd41037e85a68309fe171a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.1.0/glasir-0.1.0-linux-arm64.tar.gz"
      sha256 "837dc654faa3667e4344ff9a95a1bce32c2de11b0c8641c539141f8cb9848433"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.1.0/glasir-0.1.0-linux-x86_64.tar.gz"
      sha256 "1cb0abaef4316f247b97321cc9ba5cdd8026cdc21708f71bc7c74b7eba520977"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
