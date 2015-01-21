require 'formula'

class Buildr < Formula
  homepage ''
  url 'https://github.com/johnlayton/anamastreet/raw/master/dist/buildr-<%= version %>.tar.gz'
  sha1 '<%= shasum %>'

  def install
    bash_completion.install "completions/buildr.bash"
  end

end