class Xei < Formula
  desc "xei (晴) — a modern Vim-like terminal editor in Rust"
  homepage "https://github.com/stremtec/xei"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.0/xei-aarch64-apple-darwin.gz"
      sha256 "35089777e1fe20fbe53ad9d019d4e3adc61d31d8f414f6b5718cd37a0a3fe74f"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.0/xei-x86_64-apple-darwin.gz"
      sha256 "8fea0d3dcf4771448dadf7969e96e48d0cd7dd128933d6c42a7efdba798e8c22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stremtec/xei/releases/download/v3.0.0/xei-aarch64-unknown-linux-gnu.gz"
      sha256 "1a27c1e8a4a5787c07cd6463dda0be8020ff4119c9969c29fb1e63fd87839e4e"
    else
      url "https://github.com/stremtec/xei/releases/download/v3.0.0/xei-x86_64-unknown-linux-gnu.gz"
      sha256 "9d66d318c37533395842f7b4caee3e8ca2d22191501eae13f8749c1d2688fb48"
    end
  end

  def install
    bin.install Dir["xei-*"].first => "xei"
  end
end
