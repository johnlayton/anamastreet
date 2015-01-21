require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/buildr-0.0.5.tar.gz'
  sha1 'a34e86bbaf0cff90e23d490803279626f2a517f6'

  def install
    bash_completion.install "completions/buildr.bash"
  end

end