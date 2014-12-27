require 'formula'

# Homer is a home directory manager.
class Homer < Formula
  homepage 'https://github.com/tubbo/homer'
  url 'https://github.com/tubbo/homer/archive/v0.0.3.tar.gz'
  sha1 'a6dc7ab9d74004c6db8f955c816d28bb773d79e0'
  version '0.0.3'
  head 'https://github.com/tubbo/homer.git'

  depends_on 'zsh'
  depends_on 'antigen'
  depends_on 'keychain'

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
