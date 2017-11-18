class Avm < Formula
  VERSION = '0.1.0'

  desc "Anything Version Manager"
  homepage "https://github.com/tubbo/avm"
  url "https://github.com/tubbo/avm/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "80a6c82028055a8512c7f12b11e8212ebed9f97c"

  # depends_on "cmake" => :build

  def install
    # noop
  end

  test do
    system 'make test'
  end
end
