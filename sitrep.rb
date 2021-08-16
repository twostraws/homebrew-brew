class Sitrep < Formula
  desc "Sitrep is a source code analyzer for Swift projects, giving you a high-level overview of your code."
  homepage "https://github.com/twostraws/Sitrep"
  url "https://github.com/twostraws/Sitrep/archive/2.0.0.zip"
  sha256 "e7da4676d65071ac7250e3fb9a7a6b544456396828adb43a1749616238cf7335"
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
