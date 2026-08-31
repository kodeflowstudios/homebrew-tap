class Utui < Formula
  desc "TUI for managing Unity projects and editor installs"
  homepage "https://github.com/kodeflowstudios/utui"
  url "https://github.com/kodeflowstudios/utui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6c094fdb630178313ca0bab4602b9a039b296277a3cb97e13e27984e27c0a3c4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/utui", "--version"
  end
end
