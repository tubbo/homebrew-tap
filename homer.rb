require "formula"

class Homer < Formula
  homepage "https://github.com/tubbo/homer"
  url "https://github.com/tubbo/homer/archive/0.0.1.tar.gz"
  sha1 "f7dd9557a96cfc93986b2785bf404b6a2ae872ae"
  version "0.0.1"
  head "https://github.com/tubbo/homer.git"
  #license 'MIT'

  depends_on 'chruby'
  depends_on 'ruby-install'
  depends_on 'zsh'
  depends_on 'antigen'

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats
    "Run `homer init` to set up your home dir."
  end

  test do
    system 'homer'
  end
end
