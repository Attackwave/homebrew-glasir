class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.1/glasir-0.11.1-macos-arm64.tar.gz"
      sha256 "c6a21202df597df6fed9bf28cec869bfb95705d46c572776261e83d8751a9b20"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.1/glasir-0.11.1-macos-x86_64.tar.gz"
      sha256 "80db0dca455b5e9f1d4ee4209d346c8889402e8efdd6b5feb4808022612b03a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.1/glasir-0.11.1-linux-arm64.tar.gz"
      sha256 "9ba5b877ebdc7016e6562cbc8643cb7167577dc07e36f2bc692f2e9b92da741b"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.11.1/glasir-0.11.1-linux-x86_64.tar.gz"
      sha256 "0eccc0639396b4f161c9d330ebedd802ffc0f1e9024e1f3897b55d9ef4e26428"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
