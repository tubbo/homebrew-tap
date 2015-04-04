require 'formula'

# Installs my Rails application template.
class RailsTemplate < Formula
  homepage 'https://github.com/tubbo/rails-template'
  url 'https://github.com/tubbo/rails-template/archive/v1.1.1.tar.gz'
  sha1 '4059a0bb460d4bb8608ef87a367f428cf22a1882'
  head 'https://github.com/tubbo/rails-template.git'

  def install
    system 'make'
  end

  test do
    system 'ls /usr/local/share/rails-template/rails-template.rb'
  end
end
