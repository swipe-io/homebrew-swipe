require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-beta6"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta6/swipe_2.0.0-beta6_darwin_amd64.zip"
      sha256 "c61fa270802c6aac6b3f57a0af22d5a4c19010136c8477669f6addd1c737806a"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta6/"
      sha256 ""
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta6/swipe_2.0.0-beta6_darwin_386.zip"
      sha256 "89876c6e5f507a504962341c3986a051e6137bebf8fb8fca4740c77306b26760"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta6/swipe_2.0.0-beta6_linux_386.tar.gz"
      sha256 "5a4512286a350f4651280b7d585f694d7d9f8713238c3e11e47ef13aeab26c6b"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "swipe"
  end

  test do
    system "swipe"
  end

end
