class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "3.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.2/xei-aarch64-apple-darwin.gz"
      sha256 "658f810439a2423ac4cc4e484955f25e7e1c92b0302826bfb394c8f5c03206d7"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.2/xei-x86_64-apple-darwin.gz"
      sha256 "0fef8d23601fc071790ec71daad0078f0d32eeac5200a03e1dbacc943672b145"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.2/xei-aarch64-unknown-linux-gnu.gz"
      sha256 "993dc1bcd3363049d05135f3eb6c90cf4372e27ede40766a1b343f77f304f8a6"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.2/xei-x86_64-unknown-linux-gnu.gz"
      sha256 "2fcabe6bbd757ebd87371f2d7c5cd8667e4b114b035fd0f694589ffd98e9792a"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
