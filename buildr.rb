require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/buildr-0.0.4.tar.gz'
  sha1 '881a9b23cf85ed5ae6e9fdb0c56ed44a97e1f829'

  def install
    if build.with? "completions"
      bash_completion.install "completions/buildr.bash"
    end
  end

end