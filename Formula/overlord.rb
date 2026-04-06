class Overlord < Formula
  desc "AI-guided static QA CLI for repository scanning and session-based review"
  homepage "https://github.com/handfulkids/overlord"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/handfulkids/homebrew-overlord/releases/download/v0.2.0/overlord_0.2.0_darwin_arm64.tar.gz"
      sha256 "eda171b07b18193bf3000278f79979e4d23d90fa9ccf1c11e30b43d67baf4355"
    else
      url "https://github.com/handfulkids/homebrew-overlord/releases/download/v0.2.0/overlord_0.2.0_darwin_amd64.tar.gz"
      sha256 "8500c3d676d1ee3697324bd9105f36446f51541dce2390e7c3b94cf408732c6d"
    end
  end

  def install
    bin.install "overlord"
  end

  test do
    assert_match "정적 QA 에이전트", shell_output("#{bin}/overlord help")
  end
end
