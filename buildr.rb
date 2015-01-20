require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/buildr-0.0.3.tar.gz'
  sha1 'ab19522087f2fa2198b890e4e71551cd60425937'

  def install
    if build.with? "completions"
      bash_completion.install "completions/buildr.bash"
    end
  end

end