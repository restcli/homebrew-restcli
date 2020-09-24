require "formula"
class Restcli < Formula
    desc "A missing commandline application for execute IntelliJ HTTP Client files"
    homepage "https://restcli.github.io/"  
    url "https://github.com/restcli/restcli/releases/download/v1.7.3/brew_restcli.zip"
    sha256 "f3db8e984599cb3992726b84cfd2d6a60fd10ca0557df8d2131a93521a8f7888"
    license "MIT"
    version "1.7.3"

    def install
        inreplace "brew/restcli", "##PREFIX##", "#{prefix}"
        prefix.install "restcli.jar"
        bin.install "brew/restcli"
    end
end
