require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.17"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.17/swipe_2.0.0-alpha.17_darwin_amd64.zip"
      sha256 "2c5e114efc748a90098d6c6564c520bf21f09357eea78ec0b424c05263d4875c"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.17/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.17/swipe_2.0.0-alpha.17_darwin_386.zip"
      sha256 "7bbdb178ece0850b31d740c6bd8ab2851661e1a4b54392debca39d58b5595e0a"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.17/swipe_2.0.0-alpha.17_linux_386.tar.gz"
      sha256 "70803327367f3fa890b795812957a27ae232cc0a18ca24ff86f5e3aa6986e613"
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
