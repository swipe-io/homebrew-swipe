require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-alpha.22"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.22/swipe_2.0.0-alpha.22_darwin_amd64.zip"
      sha256 "b2e8d8a86159d18330409f8f4aabe2a3c7722f8bd513f915aef72facbd6ed850"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.22/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.22/swipe_2.0.0-alpha.22_darwin_386.zip"
      sha256 "81bcf49c26571d7c42c1aac9ad27a83dd231f86213fd74e14a73dc8d8c68e3a9"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-alpha.22/swipe_2.0.0-alpha.22_linux_386.tar.gz"
      sha256 "7d948fddadb95a612252dcbc16c734760849f2abb8c903ead18d1ba54e2098a3"
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
