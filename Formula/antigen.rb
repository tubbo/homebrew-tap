require "formula"

class Antigen < Formula
  homepage "http://antigen.sharats.me/"

  url "https://github.com/tubbo/antigen/archive/install-to-usr-local.tar.gz"
  version "1.1"
  sha256 "39102dd6169d926b4e997445cc06bd45a90602c1"

  depends_on 'zsh'

  head "https://github.com/tubbo/antigen.git", \
    :branch => "install-to-usr-local",
    :revision => "8aa76cd8b798813775faa563c288fcf4c779ce73"

  def install
    system 'make install'
  end

  def caveats
    <<-TXT

    Add the following to your ~/.zshenv to start using Antigen:

       source /usr/local/share/antigen.zsh

  TXT
  end

  test do
    system "source #{prefix}/share/antigen.zsh"
  end
end
