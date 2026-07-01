class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v0.1.1/xei-aarch64-apple-darwin.gz"
      sha256 "b9de93b96744763c3b3a532a574e194bb561d6a7817446c11d1b33fce61643db"
    else
      url "https://github.com/stremtec/xei/releases/download/v0.1.1/xei-x86_64-apple-darwin.gz"
      sha256 "1d7cd15f73a4cc600401ada6f62d18a4e0e09ee2967eedeeb6f7305e175aef29"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
