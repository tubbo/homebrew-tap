class Chchef < Formula
  desc 'Use different Chef Server origins in your .chef folder'
  homepage 'https://tubbo.github.io/chchef'
  url 'https://github.com/tubbo/chchef/archive/v0.2.0.zip'
  version 'v0.2.0'
  sha256 'd39bd9dde317f501fc1e5f7146987b5040ac6e63a15436b9bdc9f4b3bfb17466'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  test do
    system "source /usr/local/share/chchef/chchef.sh"
  end

  def caveats; <<-EOS.undent
    Add the following to the ~/.bashrc or ~/.zshrc file:
      source #{opt_share}/chchef/chchef.sh
    EOS
  end
end
