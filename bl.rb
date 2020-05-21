class Bl < Formula
  homepage "https://blocklayerhq.com"
  desc "Blocklayer CLI"

  version "0b507c12"
  url "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/#{version}/bl-Darwin-x86_64"
  sha256 "9dc8a5f71967a613a59445e9c3f81f2271b2de98b7492db4852aef8d9cb67e75"

  def install
    mv "bl-Darwin-x86_64", "bl"
    bin.install "bl"
  end

  test do
    system "#{bin}/bl version"
  end
end
