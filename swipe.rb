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
      sha256 "49a1e48aeff40df7bfd7eb6217665f3794569f644a60e157f34484990e8ce660"
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
      sha256 "c0e35d4c5971554dbd052a9743385e4277238e71484bcfc151f09829b0ab6020"
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
