class Sitrep < Formula
  desc "Sitrep is a source code analyzer for Swift projects, giving you a high-level overview of your code."
  homepage "https://github.com/twostraws/Sitrep"
  url "https://github.com/twostraws/Sitrep/archive/3.0.0.zip"
  sha256 "88d2afeed4295a724307117f6e88d1a13e53b89e795d847d84ea9394be9f15e7"
  license "Apache-2.0" => { with: "LLVM-exception" }

  def install
    opoo "Building now – this might take a few minutes."
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/sitrep'
    ohai "Done! You can now run 'sitrep' in a Swift project directory."
  end
end
