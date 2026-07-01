class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v0.1.4/xei-aarch64-apple-darwin.gz"
      sha256 "b2f407f94a8d73cef5bda1f86f6d8404a2b1a5f1d306e549514f3f623a491305"
    else
      url "https://github.com/stremtec/xei/releases/download/v0.1.4/xei-x86_64-apple-darwin.gz"
      sha256 "e740edeff5c405b7c989607e782ebee62189cdf5f483b4b96ebc5b2d50009089"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
