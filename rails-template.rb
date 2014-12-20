require "formula"

class RailsTemplate < Formula
  homepage "https://github.com/tubbo/rails-template"
  url "https://github.com/tubbo/rails-template/archive/v1.1.0.tar.gz"
  sha1 "f82ae8c05c5a09f39bf2564eef56ed9bbafc2ee4"

  def install
    system 'make'
  end

  test do
    system "ls /usr/local/share/rails-template/rails-template.rb", "ls /usr/local/share/rails-template/templates"
  end
end
