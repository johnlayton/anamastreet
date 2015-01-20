require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/buildr-0.0.1.tar.gz'
  sha1 'fa08ac78adc1e7ad374651c1f2b00ad33a46631f'

  def install
    bash_completion.install "completions/buildr.bash"
  end

end