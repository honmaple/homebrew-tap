class Snow < Formula
  homepage "https://github.com/honmaple/snow"
  desc "static site generator"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/honmaple/snow/releases/download/v0.1.3/snow-darwin-arm64.tar.gz"
      sha256 "04e8ac4fd0e0ebee8d5535d25adeefef610213797cac326fa7aac23f041fb86a"
    end

    on_intel do
      url "https://github.com/honmaple/snow/releases/download/v0.1.3/snow-darwin.tar.gz"
      sha256 "d369e38582ad9c9f0f7ad5dd30895e1bcc83eaa4ab00ac073b2b5c5d762912ac"
    end
  end

  on_linux do
    url "https://github.com/honmaple/snow/releases/download/v0.1.3/snow-linux.tar.gz"
    sha256 "7b23dbf2ca2ed59d188a200fb37596340ded935a78fc672a263cd757b8a9f285"
  end

  def install
    bin.install "snow"
  end

  test do
    assert_match "snow version #{version}", shell_output("#{bin}/snow --version")
  end
end
