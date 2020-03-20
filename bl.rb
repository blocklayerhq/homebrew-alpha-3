class Bl < Formula
  homepage "https://blocklayerhq.com"
  desc "Blocklayer CLI"

  version "f27c6b96"
  url "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/#{version}/bl-Darwin-x86_64"
  sha256 "320c9777846d194993bd056c49dce2754ec0b7ed48747785bfda1ec3bdeaa308"

  def install
    mv "bl-Darwin-x86_64", "bl"
    bin.install "bl"
  end

  test do
    system "#{bin}/bl version"
  end
end
