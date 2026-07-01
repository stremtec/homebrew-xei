class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v0.1.0/xei-aarch64-apple-darwin.gz"
      sha256 "718a3e0bf02c31fa70c2519f002a5748157dad0d9b7c14a097475be5b9bb10cf"
    else
      url "https://github.com/stremtec/xei/releases/download/v0.1.0/xei-x86_64-apple-darwin.gz"
      sha256 "404ba76a69d54e017401857b66ebee867c9d1dc9b0df52c3315affca13692b73"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
