class Escpos < Formula
  desc "Tcl library for ESC/POS compatible receipt printers"
  homepage "https://github.com/bef/tcl-escpos"
  url "https://github.com/bef/tcl-escpos/archive/3e4545cdf6373383ed824e75765f59aae90ce112.tar.gz"
  version "0.2"
  sha256 "9dcb04b6378ec2839aea6a5e587f0185e584a1c040c6d88e290c5d5292e06e05"

  depends_on "tcl-tk"
  depends_on "tcl.gd"

  def install
    puts "#{prefix} #{lib} #{name} #{version}"
    pkgdir = "#{lib}/#{name}#{version}"
    system "mkdir", "-p", pkgdir
    system "cp", "-r", ".", pkgdir
  end

  test do
    false
  end
end
