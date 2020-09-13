require"formula"classSrcclr < Formula
  homepage "https://restcli.github.io/"
  url "https://raw.githubusercontent.com/restcli/homebrew-restcli/master/restcli.zip"
  sha256 "af6a4b85a7a9e0b26ba941bba4024ce54b58f8177bf28fd8ba9587fbace739fd"definstall
      inreplace "brew/restcli", "##PREFIX##", "#{prefix}"
      prefix.install "restcli.jar"
      bin.install "brew/restcli"endend