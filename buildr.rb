require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/buildr-0.0.2.tar.gz'
  sha1 'cac29ac2af5b050d62b30c132bbb9b0c1876571d'

  def install
    bash_completion.install "completions/buildr.bash"
  end

end