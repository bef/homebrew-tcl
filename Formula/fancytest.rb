class Fancytest < Formula
  desc "Fancy Tcl test framework"
  homepage "https://github.com/bef/fancytest"
  url "https://github.com/bef/fancytest/archive/refs/tags/v0.1.tar.gz"
  sha256 "e0b10d813dbe7ed2e271711f01708dd3c77ee1298e115310df4774ccc9b21032"
  
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
