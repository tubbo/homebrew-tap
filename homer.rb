require 'formula'

# Homer is a home directory manager.
class Homer < Formula
  homepage 'https://github.com/tubbo/homer'
  url 'https://github.com/tubbo/homer/archive/v0.0.4.tar.gz'
  sha1 'a651ddab88ee5310561d34dc6f6bc955eff78d75'
  version '0.0.4'
  head 'https://github.com/tubbo/homer.git'

  depends_on 'zsh'
  depends_on 'antigen'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats
    'Run `homer init` to set up your home dir.'
  end

  test do
    system 'homer'
  end
end
