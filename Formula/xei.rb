class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "3.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.9/xei-aarch64-apple-darwin.gz"
      sha256 "ae2e9f86499a317de92f50ad8f1b20348f0b18aa0a62c5a5e399f7061a60701d"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.9/xei-x86_64-apple-darwin.gz"
      sha256 "3ab08f3bc903e760cec050c89d076bd586857706090e2176fc5040ab1f89d391"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.9/xei-aarch64-unknown-linux-gnu.gz"
      sha256 "52a44d45cfe60e6f9d630075c84eb78d1a29a23bf234008d430f785c93c7715f"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.9/xei-x86_64-unknown-linux-gnu.gz"
      sha256 "67005204fcbfa21f528ff8127edc949a1ee1159aacb035c15aa718bf10e7fb59"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
