require 'formula'

# Homer is a home directory manager.
class Homer < Formula
  homepage 'https://github.com/tubbo/homer'
  url 'https://github.com/tubbo/homer/archive/v0.1.2.tar.gz'
  sha256 '88032621648b0b3f2e420b5b3e33b3753fadedec435b9da9f500d5a98c78b0f0'
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
