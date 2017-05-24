# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Chchef < Formula
  desc 'Use different Chef Server origins in your .chef folder'
  homepage 'https://tubbo.github.io/chchef'
  url 'https://github.com/tubbo/chchef/archive/v0.1.0.zip'
  version 'v0.1.0'
  sha256 '24ffb7acaea1a9f7e42b82452f4907b0b90add419f0176ff3bfde153c1ac2ab7'

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "install"
  end

  test do
    system "source /usr/local/share/chchef/chchef.sh"
  end
end
