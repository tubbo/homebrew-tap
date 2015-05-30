require 'formula'

# Homer is a home directory manager.
class Homer < Formula
  homepage 'https://github.com/tubbo/homer'
  url 'https://github.com/tubbo/homer/archive/v0.0.6.tar.gz'
  sha1 '634ddca665b82e2560b03c6fb2a0af25e0f67abf'
  version '0.0.6'
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
