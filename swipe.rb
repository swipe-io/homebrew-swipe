require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc2"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc2/swipe_2.0.0-rc2_darwin_amd64.zip"
      sha256 "f9598b7769bf48073526eeab36bc3b1aa95a353e39d9119fa48c09e9d3975b37"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc2/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc2/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc2/swipe_2.0.0-rc2_linux_386.tar.gz"
      sha256 "d761ae3a88d63754e429a44e4e835814701c6f9c468041b66bd185acd2d1d22b"
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
