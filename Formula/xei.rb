class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "3.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.3/xei-aarch64-apple-darwin.gz"
      sha256 "25b73b2cef777ea92fb6c73709fff3620752f308c1be56c1a6191e045d68625e"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.3/xei-x86_64-apple-darwin.gz"
      sha256 "aefd1a5f51d0304d98911e91cf4d3604740a842bbe898370ec635f6066430805"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.3/xei-aarch64-unknown-linux-gnu.gz"
      sha256 "c0f3b16576dd3c5baed091a091778ac5f9a83ae732ed90e8a2dd4d79f6be2915"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.3/xei-x86_64-unknown-linux-gnu.gz"
      sha256 "e18c7d0d4a0b7996f5bec0bcd28ceb4a19b8bd8e2433e531af5993b6c787d47e"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
