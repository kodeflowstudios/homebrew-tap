class Utui < Formula
  desc "TUI for managing Unity projects and editor installs"
  homepage "https://github.com/kodeflowstudios/utui"
  url "https://github.com/kodeflowstudios/utui/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "2516945adfab3c8e26bf01813deae27e3a9a679b4473191b2b8f7386e5843d86"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/utui", "--version"
  end
end
