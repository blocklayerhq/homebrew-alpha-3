class Bl < Formula
  homepage "https://blocklayerhq.com"
  desc "Blocklayer CLI"

  version "20200701.1"
  version_scheme 1

  url "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/f36b851e/bl-Darwin-x86_64"
  sha256 "bded7a8d6f2c22a8cb0803ce714c038fb109f27e079028aa3592c0729581ab38"

  def install
    mv "bl-Darwin-x86_64", "bl"
    bin.install "bl"
  end

  test do
    system "#{bin}/bl version"
  end
end
