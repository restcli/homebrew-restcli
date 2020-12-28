require "formula"
class Restcli < Formula
    desc "A missing commandline application for execute IntelliJ HTTP Client files"
    homepage "https://restcli.github.io/"  
    url "https://github.com/restcli/restcli/releases/download/v1.7.4/brew_restcli.zip"
    sha256 "7e8d5d7c64c31b3d5b3768a69960d0c11b419bafb6f41c0ac2410ab85b56e1cb"
    license "MIT"
    version "1.7.4"

    def install
        inreplace "brew/restcli", "##PREFIX##", "#{prefix}"
        prefix.install "restcli.jar"
        bin.install "brew/restcli"
    end
end
