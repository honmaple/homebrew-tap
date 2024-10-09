class Snow < Formula
  homepage "https://github.com/honmaple/snow"
  desc "static site generator"
  url "https://github.com/honmaple/snow/releases/download/v0.1.3/snow-darwin.tar.gz"
  sha256 "f2ff38f3366814a91a10a2424013c3e7d9dffec3f4ea49472e8b1e6c88ba9523"
  license "BSD-3-Clause"

  def install
    bin.install "snow"
  end

  test do
    assert_match "snow version #{version}", shell_output("#{bin}/snow --version")
  end
end
