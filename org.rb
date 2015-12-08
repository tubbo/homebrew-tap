# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Org < Formula
  desc "An org-mode for the rest of us"
  homepage "https://github.com/tubbo/org"
  url "https://github.com/tubbo/org.git"
  sha256 "2180353940f8c9d5e902dfb8d90886804544c5bd"
  version '0.0.1'

  def install
    system 'make'
  end

  test do
    system "false"
  end

  def caveats
    'Run `org sync` to sync all .org files with MobileOrg Dropbox'
  end
end
