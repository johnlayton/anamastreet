require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/jsenv-0.0.1.tar.gz'
  sha1 'cf840e41118d48dab9ef1a7671d811b43fdbbfc4'

  def install
    bash_completion.install "completions/buildr.bash"
  end

end