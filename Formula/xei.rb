class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v0.1.5/xei-aarch64-apple-darwin.gz"
      sha256 "6044d990e797afba372c157968d138051196a45755ae8611b2bf7bf396b94272"
    else
      url "https://github.com/stremtec/xei/releases/download/v0.1.5/xei-x86_64-apple-darwin.gz"
      sha256 "91819335dcc321c857326f2972cc74357828aa5fdfaf53cddb4337aa3cb9a773"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
