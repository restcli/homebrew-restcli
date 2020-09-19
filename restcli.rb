require "formula"
class Restcli < Formula
    desc "A missing commandline application for execute IntelliJ HTTP Client files"
    homepage "https://restcli.github.io/"  
    url "https://github.com/restcli/restcli/releases/download/v1.7.2/brew_restcli.zip"
    sha256 "c7bbc26b2795388f5536c67d986825613686bb9f3a108fa76954e5863ea39622"
    license "MIT"
    version "1.7.2"

    def install
        inreplace "brew/restcli", "##PREFIX##", "#{prefix}"
        prefix.install "restcli.jar"
        bin.install "brew/restcli"
    end
end
