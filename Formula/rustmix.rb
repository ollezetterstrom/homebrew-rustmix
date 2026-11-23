class Rustmix < Formula
  desc "Ultra-fast, high-density codebase packer for frontier reasoning models"
  homepage "https://github.com/ollezetterstrom/Rustmix"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ollezetterstrom/Rustmix/releases/download/v2.0.0/rustmix-aarch64-apple-darwin.tar.gz"
      sha256 "9726fd6a52de22ef8f3d3ce48fdd2fb4e5e47e27f4aa52f9f0bc739a6561a4e6"
    else
      url "https://github.com/ollezetterstrom/Rustmix/releases/download/v2.0.0/rustmix-x86_64-apple-darwin.tar.gz"
      sha256 "b709804f64cc181082df222a692accaaa5a54eb4cbe325e53954a965b20aff86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ollezetterstrom/Rustmix/releases/download/v2.0.0/rustmix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f747b5c760a2fddd7557ef51bea7d0719ee79c6738df4cb621f8fc923a2dac9"
    else
      url "https://github.com/ollezetterstrom/Rustmix/releases/download/v2.0.0/rustmix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ded124b9cff70762cdf20c81b8438b3371ca39e3caf9325e870a1a1796b7ab2a"
    end
  end

  def install
    bin.install "rustmix"
  end

  test do
    assert_match "rustmix #{version}", shell_output("#{bin}/rustmix --version")
  end
end
