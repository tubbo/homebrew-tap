# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Org < Formula
  desc "An org-mode for the rest of us"
  homepage "https://github.com/tubbo/org"
  url "https://github.com/tubbo/org.git"
  sha256 "2d78672253551f460eff624e2d8ecf3312fe9f61"
  version '0.0.1'

  def install
    system 'make'
  end

  test do
    system "false"
  end

  def caveats
    'Run `org help` to see all the things you can do'
  end
end
