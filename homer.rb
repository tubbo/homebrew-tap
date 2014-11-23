require "formula"

class Homer < Formula
  homepage "https://github.com/tubbo/homer"
  url "https://github.com/tubbo/homer/archive/master.tar.gz"
  sha1 "aa79f2d98325b7688782ef836fc16a136eadbab1"
  version "master"
  head "https://github.com/tubbo/homer.git"

  depends_on 'chruby'
  depends_on 'ruby-install'

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    Thanks for installing Homer!

    Run `homer init` to set up your home dir.
    EOS
  end

  test do
    assert system("ls /usr/local/lib/homer")
    assert system("ls /usr/local/lib/homer.zsh")
    assert system("ls /usr/local/lib/antigen.zsh")
    assert system("ls /usr/local/share/homer")
  end
end
