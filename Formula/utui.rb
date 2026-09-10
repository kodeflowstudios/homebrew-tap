class Utui < Formula
  desc "TUI for managing Unity projects and editor installs"
  homepage "https://github.com/kodeflowstudios/utui"
  url "https://github.com/kodeflowstudios/utui/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "e12d30e06de132527d25bdb9a7abe28790a873d72452cba3e5704343a377fe63"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/utui", "--version"
  end
end
