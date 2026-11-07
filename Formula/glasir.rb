class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.4/glasir-0.11.4-macos-arm64.tar.gz"
      sha256 "2fdc0797311db6d6c84a8b7c8e04eb1147b6b3925c8f333d69bab24d0910474f"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.4/glasir-0.11.4-macos-x86_64.tar.gz"
      sha256 "f144e28d9529df8f2d4f9e46e42fdf49f3c23081d458a229e435aae6a7cecdea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.4/glasir-0.11.4-linux-arm64.tar.gz"
      sha256 "95ccf9b3aaeedde1503563d6bc39602b18787126e4f0a1a1e286c3d85506db52"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.4/glasir-0.11.4-linux-x86_64.tar.gz"
      sha256 "b884fd21be990cebcc3285909f6600580fea9da75ba63f7b6f121877c182bff5"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
