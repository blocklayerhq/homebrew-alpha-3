class Bl < Formula
  homepage "https://blocklayerhq.com"
  desc "Blocklayer CLI"

  version "cc61c92c"
  url "https://blocklayer-dev.s3.amazonaws.com/alpha-3/cli/#{version}/bl-Darwin-x86_64"
  sha256 "cca9ddb8e78df599ba175b110b3efe5dad39559e8c5836d004c3cc0bc6e183f5"

  def install
    mv "bl-Darwin-x86_64", "bl"
    bin.install "bl"
  end

  test do
    system "#{bin}/bl version"
  end
end
