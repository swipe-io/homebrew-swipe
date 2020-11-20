require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-beta1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/swipe_2.0.0-beta1_darwin_amd64.zip"
      sha256 "65451b61826aee51d679d79fee2543a84e5387b738a6f8f10945a68a8ada5fc5"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/swipe_2.0.0-beta1_darwin_386.zip"
      sha256 "7aeec496ad56e00b2a7f5998fdc725cddf7096d7d1389bdacf3fe72011ccab41"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-beta1/swipe_2.0.0-beta1_linux_386.tar.gz"
      sha256 "536d25eb52c4ff94ba39c25dd54cc5b7c22dd9742baf63a0ffeb6f4e46cdb0b6"
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
