require 'formula'

# Homer is a home directory manager.
class Homer < Formula
  homepage 'https://github.com/tubbo/homer'
  url 'https://github.com/tubbo/homer/archive/v0.1.1.tar.gz'
  sha256 '2fdcf7f2b8465f88f029a83e805ca1aec8ea5477'
  version '0.1.1'
  head 'https://github.com/tubbo/homer.git'

  depends_on 'zsh'
  depends_on 'antigen'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats
    <<~TEXT
    Run `homer init [REPO]` to set up your home dir.

    Or, run `homer` to see the full list of commands.
    TEXT
  end

  test do
    system 'homer'
  end
end
