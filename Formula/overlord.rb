class Overlord < Formula
  desc "AI-guided static QA CLI for repository scanning and session-based review"
  homepage "https://github.com/handfulkids/overlord"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/handfulkids/homebrew-overlord/releases/download/v0.2.1/overlord_0.2.1_darwin_arm64.tar.gz"
      sha256 "6eea9e5edc9a02adf07e54b1abd877a8132bf443d8e5355a03e8f0d360205d98"
    else
      url "https://github.com/handfulkids/homebrew-overlord/releases/download/v0.2.1/overlord_0.2.1_darwin_amd64.tar.gz"
      sha256 "cc87b1cfe5a869f1514770460cb878b5c676c43c918fa9c493872ae45e5852b1"
    end
  end

  def install
    bin.install "overlord"
  end

  test do
    assert_match "정적 QA 에이전트", shell_output("#{bin}/overlord help")
  end
end
