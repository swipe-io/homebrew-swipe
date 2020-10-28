require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.15"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/swipe_2.0.0-alpha.15_darwin_amd64.zip"
      sha256 "ea2efef9ec3537e4bc269fd640b72c2adb22ab49043c7d9ee7b9bc9853a14e1f"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/swipe_2.0.0-alpha.15_darwin_386.zip"
      sha256 "f8fc2cfa6bc055d1599c7ef3bc254b704bce2ebd45b33f18aa77ac3c3ece76ca"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.15/swipe_2.0.0-alpha.15_linux_386.tar.gz"
      sha256 "0e44a04f5bc732129b2c0dd97cd4c291f4be5916adf0a6b576ea31335a926af1"
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
