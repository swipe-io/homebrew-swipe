require 'rbconfig'
class Swipe < Formula
  desc ""
  homepage "https://github.com/swipe-io/swipe"
  version "2.0.0-rc3"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc3/v2_2.0.0-rc3_darwin_amd64.zip"
      sha256 "e9fba0ca052aa32ad6395bcf98d28ff6dbe14650dce3ddd0569688ee62cd2376"
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc3/"
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
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc3/"
      sha256 ""
    when /linux/
      url "https://github.com/swipe-io/swipe/releases/download/v2.0.0-rc3/v2_2.0.0-rc3_linux_386.tar.gz"
      sha256 "94a2047e409d066043fc8178dfe4bf864190d784a367bdf87ff05cd4637e6467"
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
