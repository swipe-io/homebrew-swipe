require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc11"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc11/v2_2.0.0-rc11_darwin_amd64.zip"
      sha256 "4e9bb6cccae987b88d0c1c17405725fcfb25b00447ceb77f0b67f03328412904"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc11/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc11/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc11/v2_2.0.0-rc11_linux_386.tar.gz"
      sha256 "b60bcf859fe1c0657f73745c9d4e7d62a8384092dbc7567af7bacac75d80d6df"
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
