class TclGd < Formula
  desc "Tcl interface to the GD drawing library"
  homepage "https://flightaware.github.io/tcl.gd/"
  url "https://github.com/bef/tcl.gd.git", revision: "9e6b6cf330645da436744e5d4fac6c9c4b4e572c"
  version "1.3.1"

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
