require "formula"
class Restcli < Formula
    desc "A missing commandline application for execute IntelliJ HTTP Client files"
    homepage "https://restcli.github.io/"  
    url "https://raw.githubusercontent.com/restcli/homebrew-restcli/master/restcli.zip"
    sha256 "31fc4c80bc57b355c44617007e842a141817e77ad0f4ee396de1dbf3090d5152"
    license "MIT"
    version "1.7.0"

    def install
        inreplace "brew/restcli", "##PREFIX##", "#{prefix}"
        prefix.install "restcli.jar"
        bin.install "brew/restcli"
    end
end