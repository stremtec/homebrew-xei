class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "3.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.6/xei-aarch64-apple-darwin.gz"
      sha256 "8d5353f1390f3fba0568f986909357986e5fa3053399bb66270dbefd5efe845c"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.6/xei-x86_64-apple-darwin.gz"
      sha256 "b127f884ca3b4e085ea22f1bbc78d7919949213e59f97842b48bc40204ac8105"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.6/xei-aarch64-unknown-linux-gnu.gz"
      sha256 "e9c55320f436e402a2d2d53a979ce4f51ee341826a95a2515e6104e0b9d6b0c9"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.6/xei-x86_64-unknown-linux-gnu.gz"
      sha256 "9005e49edea7e5832928832eb34ffbe4d4434ae1e523c363c7192d2da3e0a70b"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
