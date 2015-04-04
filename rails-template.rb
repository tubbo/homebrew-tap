require 'formula'

# Installs my Rails application template.
class RailsTemplate < Formula
  homepage 'https://github.com/tubbo/rails-template'
  url 'https://github.com/tubbo/rails-template/archive/v1.1.2.tar.gz'
  sha1 'd6f1e263b74c929cece5dd29babf7a2bb7114a6a'
  head 'https://github.com/tubbo/rails-template.git'

  def install
    system 'make'
  end

  def caveats
    %{
      To finish installation, run the following command:

        sudo ln -s /usr/local/etc/ $HOME/.railsrc

      Then run `rails new` to start a new rails app!
     }
  end

  test do
    system 'ls /usr/local/share/rails-template/rails-template.rb'
  end
end
