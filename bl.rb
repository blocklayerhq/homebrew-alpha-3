class Bl < Formula
  homepage "https://blocklayerhq.com"
  desc "Blocklayer CLI"

  version "b27295bd"
  url "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/#{version}/bl-Darwin-x86_64"
  sha256 "38d8640ebf49896bf192aa1751f6c8b092fbb80e6ea60dc9c8598817e67f434e"

  def install
    mv "bl-Darwin-x86_64", "bl"
    bin.install "bl"
  end

  test do
    system "#{bin}/bl version"
  end
end
