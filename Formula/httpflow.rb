class Httpflow < Formula
  desc "Packet capture and analysis utility similar to tcpdump for HTTP"
  homepage "https://github.com/six-ddc/httpflow"
  url "https://github.com/six-ddc/httpflow/archive/0.0.5.tar.gz"
  sha256 "a20b12243bcdd4ac8c8c14706cb508ec36aceea72e1fff2892777783b8441e46"
  head "https://github.com/six-ddc/httpflow.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "842ca0ae7f881acab8020b0a50591835fa18b76d336ebb666a1820faa6be69c0" => :sierra
    sha256 "8e4c873de27139d346e8a691512dfc75e6e4249f80d9db4f4375d2eab18984d2" => :el_capitan
    sha256 "acc1d78614091e66fee186086f2d8369f7cea25dbb23744dbb1679f9f1d9ad27" => :yosemite
  end

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}", "CXX=#{ENV.cxx}"
  end

  test do
    system "#{bin}/httpflow", "-h"
  end
end
