class Sitrep < Formula
  desc "Sitrep is a source code analyzer for Swift projects, giving you a high-level overview of your code."
  homepage "https://github.com/twostraws/Sitrep"
  url "https://github.com/twostraws/Sitrep/archive/2.0.1.zip"
  sha256 "a53d5b8a85ec862ada91f0b730cef71d748f61e7a91e26894366fcdeccc0c5ee"
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
