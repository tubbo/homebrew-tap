require 'formula'

class Dots < Formula
  homepage 'https://github.com/tubbo/dots'
  url 'https://github.com/tubbo/dots/archive/master.zip'
  sha1 '2af899171f413553f56add52661faba82f83a0be'

  depends_on :zsh

  def install
    system "bundle install && bundle exec rake"
  end

  test do
    system "bundle exec rake test"
  end
end
