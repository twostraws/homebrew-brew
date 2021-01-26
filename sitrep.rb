class Sitrep < Formula
  desc "Sitrep is a source code analyzer for Swift projects, giving you a high-level overview of your code."
  homepage "https://github.com/twostraws/Sitrep"
  url "https://github.com/twostraws/Sitrep/archive/1.0.0.zip"
  sha256 "6316c73bb8bf10a77cd21d026f7939ce6efeea379b99df60de7ce0ff05913c71"
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