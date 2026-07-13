class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "3.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.10/xei-aarch64-apple-darwin.gz"
      sha256 "aaa8e162174ed6b8f54098a14575959a783d7008c5d4de3d686823f9057fe082"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.10/xei-x86_64-apple-darwin.gz"
      sha256 "39e6b24c7cd717e3c5643f9ed32c115feecae5a65a80385339f0bcedbea00a29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.10/xei-aarch64-unknown-linux-gnu.gz"
      sha256 "9ebcb8810d2acfe1b34f442c38ce4e05b1f763444bb190c14b0faaf12582462b"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.10/xei-x86_64-unknown-linux-gnu.gz"
      sha256 "14dd8fbe73acae098476e5609d786498f5c8fe5fd270d693ca732fcd3d161abe"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
