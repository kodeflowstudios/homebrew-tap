class Utui < Formula
  desc "TUI for managing Unity projects and editor installs"
  homepage "https://github.com/kodeflowstudios/utui"
  url "https://github.com/kodeflowstudios/utui/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "ba049c8967f6b5281bd4b03a4eb7987d17f2c13d9a19fa5f25a8a9389f536d5b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/utui", "--version"
  end
end
