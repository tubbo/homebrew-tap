require "formula"

class RailsTemplate < Formula
  homepage "https://github.com/tubbo/rails-template"
  url "https://github.com/tubbo/rails-template/archive/v1.1.0.tar.gz"
  sha1 "b478541c733e1bd108c83156d27a26629969b4a9"

  def install
    system 'make'
  end

  test do
    system "ls /usr/local/share/rails-template/rails-template.rb", "ls /usr/local/share/rails-template/templates"
  end
end
