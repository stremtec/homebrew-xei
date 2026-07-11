class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "3.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.1/xei-aarch64-apple-darwin.gz"
      sha256 "22916c7fcff2514dd7967768d63a725a13e054be27231d39acfd17321700c91e"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.1/xei-x86_64-apple-darwin.gz"
      sha256 "62f17e1f910fea37af6f636f6e9afbe7f58e71b9ccc4f074200b8193fdda1d52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.1/xei-aarch64-unknown-linux-gnu.gz"
      sha256 "3d483269b47225db29282c0276fa92d2223196f60b96fd2d0ec6727dfefefa18"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.1/xei-x86_64-unknown-linux-gnu.gz"
      sha256 "5957d6acbbfdc99641392b848bce6799e4b5e5d4a9bc454e5820417c55a37933"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
