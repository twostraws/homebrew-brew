class Appletime < Formula
  desc "AppleTime is a tiny program to set your simulator clocks to 9:41."
  homepage "https://github.com/twostraws/AppleTime"
  url "https://github.com/twostraws/AppleTime/archive/1.0.0.zip"
  sha256 "c444ef986767ef0372e61d769e0fecdf50e29b4a92a137478abcd84c298a0859"
  license "MIT"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/appletime'
    ohai "Done! You can now run 'appletime' whenever you want."
  end
end