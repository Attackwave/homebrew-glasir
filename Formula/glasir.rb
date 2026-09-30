class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.1/glasir-0.6.1-macos-arm64.tar.gz"
      sha256 "f73b7a2c187915c5fbf4752a869382080918f0d92767c0abc3fb6fd232e1d51e"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.1/glasir-0.6.1-macos-x86_64.tar.gz"
      sha256 "fd5a5fbda7eafd186f4ca045b36fd28de05bf343de738b256f6c8e7d512c824b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.1/glasir-0.6.1-linux-arm64.tar.gz"
      sha256 "dad4209c3f2f84fffed5989ef600f4ef4eab201f9e9874ff215e55d43037d4f6"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.6.1/glasir-0.6.1-linux-x86_64.tar.gz"
      sha256 "69cd80f25da3c9b4a83d8fbf0c7ed64df73536e8d0659962499d39a29863eb94"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
