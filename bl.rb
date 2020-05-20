class Bl < Formula
  homepage "https://blocklayerhq.com"
  desc "Blocklayer CLI"

  version "40245167"
  url "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/#{version}/bl-Darwin-x86_64"
  sha256 "f6945fc8ba118d497f9f4811dcee763a1d1f83b1ab35ab6c4f71d2629a70ba75"

  def install
    mv "bl-Darwin-x86_64", "bl"
    bin.install "bl"
  end

  test do
    system "#{bin}/bl version"
  end
end
