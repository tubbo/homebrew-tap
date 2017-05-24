require 'formula'

# Homer is a home directory manager.
class Homer < Formula
  homepage 'https://github.com/tubbo/homer'
  url 'https://github.com/tubbo/homer/archive/v0.0.6.tar.gz'
  sha256 'd9750f398a5a89ec87554530b34d8d30f1975c20916b0294e42f2c4c0f196b3f'
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
