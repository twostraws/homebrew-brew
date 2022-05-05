class Sitrep < Formula
  desc "Sitrep is a source code analyzer for Swift projects, giving you a high-level overview of your code."
  homepage "https://github.com/twostraws/Sitrep"
  url "https://github.com/twostraws/Sitrep/archive/2.1.0.zip"
  sha256 "cb8794c583c4d3d8e35c07f8ac239bc48a073b33264169d8be8b07a288e2ea21"
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
