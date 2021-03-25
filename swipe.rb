require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc12"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc12/v2_2.0.0-rc12_darwin_amd64.zip"
      sha256 "b4c941bdc740d554cffe32e01348d5ea84f922d4de60c3045fcf47beb55fe7b2"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc12/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc12/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc12/v2_2.0.0-rc12_linux_386.tar.gz"
      sha256 "6d5a6d08a3860e403c91cd0239dec3f0ab3fe085c8aa40081c0f8ed4b12600ff"
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
