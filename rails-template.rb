require "formula"

class RailsTemplate < Formula
  homepage "https://github.com/tubbo/rails-template"
  url "https://github.com/tubbo/rails-template/archive/v1.0.0.tar.gz"
  sha1 "b10a66f1db2c44586ea05abaa18a35bbf63ec3a0"

  def install
    system 'make'
  end

  test do
    system "ls /usr/local/lib/rails-template", "ls /usr/local/share/rails-template"
  end
end
