require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc6"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc6/v2_2.0.0-rc6_darwin_amd64.zip"
      sha256 "ae76caad3a5f8724d5a0f24e71659b084c78ef3322bc203de9c47b76ef0b21d9"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc6/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc6/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc6/v2_2.0.0-rc6_linux_386.tar.gz"
      sha256 "0a281416105ff2771d762646fbf24ed6dffd80f477a34820782e1103cb85d470"
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
