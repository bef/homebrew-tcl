class TclGd < Formula
  desc "Tcl interface to the GD drawing library"
  homepage "https://flightaware.github.io/tcl.gd/"
  ## releases: https://github.com/flightaware/tcl.gd/releases
  url "https://github.com/flightaware/tcl.gd/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "00d048d6084e3cf9cb68b4540402d51ceab93b423f55a1741d6c3fb978385cba"

  depends_on "autoconf" => :build
  depends_on "gd"
  depends_on "tcl-tk"

  def install
    tcl_package_path = "#{HOMEBREW_PREFIX}/lib"
    system "autoconf" unless File.exist?("configure")
    system "./configure", "--prefix=#{prefix}", "--exec-prefix=#{prefix}", "--with-tcl=#{tcl_package_path}"
    system "make"
    system "make", "install"
  end

  test do
    return false
  end
end
