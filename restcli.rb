require "formula"
class Restcli < Formula
    desc "A missing commandline application for execute IntelliJ HTTP Client files"
    homepage "https://restcli.github.io/"  
    url "https://raw.githubusercontent.com/restcli/homebrew-restcli/master/restcli.zip"
    sha256 "af6a4b85a7a9e0b26ba941bba4024ce54b58f8177bf28fd8ba9587fbace739fd"
    license "MIT"
    version "1.7.0"

    def install
        inreplace "brew/restcli", "##PREFIX##", "#{prefix}"
        prefix.install "restcli.jar"
        bin.install "brew/restcli"
    end
end