require 'formula'

# Installs my Rails application template.
class RailsTemplate < Formula
  homepage 'https://github.com/tubbo/rails-template'
  url 'https://github.com/tubbo/rails-template/archive/v1.2.0.tar.gz'
  sha1 'ff76dce364fd1f8b5e14a30891082802f8aeb2f2'
  head 'https://github.com/tubbo/rails-template.git'

  def install
    system 'make'
  end

  def caveats
    %{
      To finish installation, run the following command:

        sudo ln -s /usr/local/etc/railsrc $HOME/.railsrc

      Then run `rails new` to start a new rails app!
     }
  end

  test do
    system 'ls /usr/local/share/rails-template/rails-template.rb'
  end
end
