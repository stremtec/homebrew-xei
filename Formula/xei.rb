class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v0.1.7/xei-aarch64-apple-darwin.gz"
      sha256 "dd30edb6a731ef54323e4620f9f287e3b53fefc7eb41f7fd9e3da29d1f4137fc"
    else
      url "https://github.com/stremtec/xei/releases/download/v0.1.7/xei-x86_64-apple-darwin.gz"
      sha256 "1974f5572da0e83d7241cc48dcb89006d38a697a173174e1398c2c68d9f2413d"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
