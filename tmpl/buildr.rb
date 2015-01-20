require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/buildr-<%= version %>.tar.gz'
  sha1 '<%= shasum %>'

  def install
    if build.with? "completions"
      bash_completion.install "completions/buildr.bash"
    end
  end

end