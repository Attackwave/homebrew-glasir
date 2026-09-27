class Glasir < Formula
  desc "Deterministic code intelligence graph for repositories, served over MCP"
  homepage "https://github.com/Attackwave/glasir"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.4.0/glasir-0.4.0-macos-arm64.tar.gz"
      sha256 "56690a15df06607a1e616a3e0aa6f839606838c661748b4ee96a458cd1bf0597"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.4.0/glasir-0.4.0-macos-x86_64.tar.gz"
      sha256 "f3efe946f21ebd9e10002337eafc1fe71279f0f9a6c11bcab209a8005b166f92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Attackwave/glasir/releases/download/v0.4.0/glasir-0.4.0-linux-arm64.tar.gz"
      sha256 "6bf79270ef115a4779947fc32e7399165092ec2b0721306573268e632fc287c1"
    end
    on_intel do
      url "https://github.com/Attackwave/glasir/releases/download/v0.4.0/glasir-0.4.0-linux-x86_64.tar.gz"
      sha256 "c927d05e695b2dc4aecf6049127e72098d324cf2839c3b7f553ef7fccf963b02"
    end
  end

  def install
    bin.install "glasir"
  end

  test do
    assert_match "glasir", shell_output("#{bin}/glasir --version")
  end
end
