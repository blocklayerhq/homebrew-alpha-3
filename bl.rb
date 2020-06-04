class Bl < Formula
  homepage "https://blocklayerhq.com"
  desc "Blocklayer CLI"

  version "20200603.1"
  version_scheme 1

  url "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/46498d44/bl-Darwin-x86_64"
  sha256 "f0a646eb9b2c8932a500fda0316fb3265cc49dec798dd2042d3583a9301b3b5b"

  def install
    mv "bl-Darwin-x86_64", "bl"
    bin.install "bl"
  end

  test do
    system "#{bin}/bl version"
  end
end
