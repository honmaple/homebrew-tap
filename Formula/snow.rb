class Snow < Formula
  homepage "https://github.com/honmaple/snow"
  desc "static site generator"
  url "https://github.com/honmaple/snow/releases/download/v0.1.2/snow-darwin.tar.gz"
  sha256 "78a65c740eff24193132e063654bd1d7023f6687c94ce852e50a03a43eaba558"
  license "BSD-3-Clause"

  def install
    bin.install "snow"
  end

  test do
    assert_match "snow version #{version}", shell_output("#{bin}/snow --version")
  end
end
