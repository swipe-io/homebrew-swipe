require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc5"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc5/v2_2.0.0-rc5_darwin_amd64.zip"
      sha256 "6b785c5bac4e22a7aa559e031474a04e5bd6200fb6b676af128859c343aa773a"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc5/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc5/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc5/v2_2.0.0-rc5_linux_386.tar.gz"
      sha256 "ac63e03e9759dbde829f13841436285597485922b82b8a4ea01d417741a981b1"
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
