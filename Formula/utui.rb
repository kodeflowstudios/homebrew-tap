class Utui < Formula
  desc "TUI for managing Unity projects and editor installs"
  homepage "https://github.com/kodeflowstudios/utui"
  url "https://github.com/kodeflowstudios/utui/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "c5c09b62e7e5362459923fe2948307b2103451953055e21be41687a2c3bf5c3a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/utui", "--version"
  end
end
