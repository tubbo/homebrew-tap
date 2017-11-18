class Avm < Formula
  desc "Anything Version Manager"
  homepage "https://github.com/tubbo/avm"
  url "https://github.com/tubbo/avm/archive/v0.1.1.tar.gz"
  sha256 "240ff1544ab10f3d79402478fd1456fb528e5a62b99b4830227706d33c4889c0"

  head "https://github.com/tubbo/avm.git"

  # bottle do
  #   cellar :any_skip_relocation
  #   sha256 "d59074fe39429eb9979acd0e81e6b9a142aa73595971cee42ab91bbe850c6105" => :high_sierra
  #   sha256 "17dc507695fed71749b5a58152d652bb7b92a4574f200b631a39f5f004e86cca" => :sierra
  #   sha256 "ff70dff83817f093d39384a40d3dfb2aaccc1cbe475d58383d4ef157085f2c64" => :el_capitan
  #   sha256 "eb14810c552b693c5ae82a577be81398e7dfeadc5489666bb0ff89581f09bfe4" => :yosemite
  #   sha256 "c7ede5a22e512d3c22406f222b539fe05b78dfb9721cfff8ce94ed0357883ba5" => :mavericks
  # end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
