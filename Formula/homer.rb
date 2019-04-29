require 'formula'

# Homer is a home directory manager.
class Homer < Formula
  homepage 'https://github.com/tubbo/homer'
  url 'https://github.com/tubbo/homer/archive/v0.1.1.tar.gz'
  sha256 'c10a6eece7546254f35c30825249c0e9a270f522b8e44a6bfa87a50f47c5fcbc'
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
