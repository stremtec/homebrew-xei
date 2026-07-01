class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v0.2.0/xei-aarch64-apple-darwin.gz"
      sha256 "d066e978e5d564fb6dab4f32735580662a86abab56031fcacb04420e8bfeaa9c"
    else
      url "https://github.com/stremtec/xei/releases/download/v0.2.0/xei-x86_64-apple-darwin.gz"
      sha256 "a378264938284cf225d7e60eac7396fc37f1f7b0c2a04d944b5503452a17da42"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
